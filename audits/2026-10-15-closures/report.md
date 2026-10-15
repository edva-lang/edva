# Closures and function passing audit — 2026-10-15

Pulled remote master and rebuilt locally at `01fe6c1` (`edva 1.1.1+01fe6c1`). [Build identity](build.json), [39 probe results](results.json), [sources](reproductions/), [eleven existing regression results](regressions.json). Generated probe LLVM files were removed before the final run, avoiding reuse of the earlier build's generated IR. No implementation changes were made for this audit.

The audit covers lexical capture, mutable environments, returned functions, nested named functions, higher-order calls, callbacks returning records/ramifications/functions, callbacks taking ramifications, and functions stored in arrays. It does not exhaustively cover FFI callbacks, dynamic/shared-module reload, threads, restore scopes, or every target ABI.

## 1. High: nested functions with the same local name collide across enclosing functions

`duplicate_inner_names` defines `inner` independently inside `make_add` and `make_mul`. Both capture their own `a` parameter and are returned:

```dva
make_add: Int => (Int => Int)
make_add = a =>
   inner = x => x + a
   inner
make_mul: Int => (Int => Int)
make_mul = a =>
   inner = x => x * a
   inner
```

Calling the returned functions should produce 13 and 30 for base 10 and input 3. The program compiles, prints 13, then segfaults (exit -11). Renaming only the second local function to `second` produces 13 and 30 (`duplicate_inner_renamed`).

Cause is visible in lowering: `src/codegen/stmt.dva:5730` looks up existing function information by the source name, and reuses a found function as a noncapturing closure. The second `inner` therefore reuses the first function pointer with a null environment instead of compiling a new lexical function. [IR excerpts](name-collision-ir.txt) show a single `@inner` definition and the constant `{ ptr @inner, ptr null }` used by `make_mul`.

Fix: give nested declarations unique lexical identities/symbols and key function metadata by those identities. Never infer that a function is noncapturing merely because another declaration with the same spelling already exists. Test repeated helper names in different functions, different signatures, different environment layouts, and noncapturing/capturing combinations.

## 2. High: a top-level function-valued binding can resolve to an unrelated nested declaration

`snapshot` is intended to test copy-at-capture:

```dva
make: Int => (Int => Int)
make = x =>
   n' = x
   f = y => n' + y
   n' = n' + 100
   f
f = make(10)
io::out $ f(1)
```

It fails LLVM verification with `call i64 @f(ptr inttoptr (i64 1 to ptr))`: the nested capturing function requires an environment plus its Int argument. Changing only the receiving top-level name to `result` makes the program compile and print the expected 11 (`snapshot_renamed`). This is a name-resolution/lowering defect, not a failure of scalar snapshot semantics.

`src/codegen/expr.dva:6062` distinguishes named-function calls from calls through local variables using function-name registries and local-variable detection. An existing top-level value slot can lose precedence to a nested function registered under the same source name. Related name-based classification appears in `codegen_typed_compile_fn` (`src/codegen/stmt.dva:6675`).

Fix: resolve the lexical binding first, distinguish function values from declarations by binding identity, and call a stored closure through its function/environment pair. The shared underlying name-identity problem overlaps finding 1, but this trigger fails without a second nested definition.

## 3. Medium: recursive nested functions that capture an outer value lose the environment argument

`nested_recursion` defines and returns a local recursive `sum`:

```dva
make: Int => (Int => Int)
make = base =>
   sum: Int => Int
   sum = n => n [0] base | n + sum(n - 1)
   sum
```

`make(10)(3)` should return 16, but compilation reaches LLVM verification with an incorrectly formed call to `@sum` containing only one pointer-shaped argument. The corresponding noncapturing nested recursion returns 6 correctly (`nested_recursion_plain`); an ordinary nonrecursive captured local call returns 13 (`named_local_call`).

Fix: recursive references to capturing functions must preserve the current environment and the user argument types. This may use an explicit self-closure binding or a direct recursive call with the hidden environment parameter. Add direct recursion, mutual recursion if supported, zero-argument recursion, and calls through returned aliases. Unsupported constructs should receive language diagnostics rather than malformed LLVM.

## 4. Medium: expected callback parameter types arrive too late for ramification extraction

The callback interface is fully declared:

```dva
#type Opt < Int | >
apply: (Opt => Int), Opt => Int
apply = f, r => f(r)
```

Yet `apply(r => r | _ | 0, Opt(<+ 3 +>))` fails E3084, attempting to unify `<Int|>` with Int (`ram_argument_inline`). A factory explicitly declared `Int => (Opt => Int)` also fails when its returned lambda extracts its ramification parameter (`ram_argument`, `ram_argument_block`). Naming the payload inside the expression does not resolve it (`ram_argument_named`).

Controls:

- A separately declared `extract: Opt => Int` works through the same `apply` (`ram_argument_plain`, output 3).
- Giving the factory's local function an explicit `Opt => Int` signature works, including capture of the outer integer (`ram_argument_typed_inner`, output 13).
- Capturing an already-typed Opt from the enclosing function works (`capture_ram`, output 13).
- Callbacks *returning* Opt work (`ram_callback`, output 13).

`annotate_fn` (`src/annotate.dva:3672`) initially binds lambda parameters to fresh unknown types and annotates the body before constructing/unifying its function type. Choices decide payload/extractor behavior using the subject type, making a later unification insufficient to repair an earlier interpretation. This is the likely point to investigate; the probes establish the expected-type-flow failure without proving that annotation order is its only cause.

Fix: make the expected parameter signature available before annotating type-dependent lambda bodies, or defer/revisit their interpretation after unification. Apply this to both inline arguments and returned lambdas. The docs already promise that inline lambdas inherit the callee's declared function type; the same interface should not depend on introducing a separately typed helper.

## Capture and alias semantics needing precise documentation

The following behavior is consistent in the tested cases and is not counted as an additional implementation defect:

| Scenario | Probe/output | Interpretation |
|---|---|---|
| Scalar captured before outer rebinding | `snapshot_renamed`: 11 | Copy-at-capture works |
| Two independently constructed sibling closures | `siblings`: 11, 12, 12 | Each has its own scalar state |
| Assignment of an existing mutable closure to another variable | `mutable_alias`: 11, 12, 13 | The variables share the same environment |
| Passing that closure to a callback helper | `mutable_callback`: 23, then 13 | Calls mutate the original environment; passing does not clone it |
| Captured array mutated by caller | `array_capture`: 101 | Captured array handle still aliases its mutable elements |
| Captured record mutated by caller | `record_capture`: 101 | Record capture preserves reference identity |
| Closures constructed inside iteration | `loop_capture`: 10, 11, 12 | Per-iteration scalar captures survive iteration |

Clarify that copying a captured value does not imply recursively copying mutable objects, and assigning/passing a closure does not create a new environment. The existing wording about independent mutable copies describes separately constructed environments, not every function-value assignment.

## Successful coverage and inference limitation

The probes successfully exercise:

- Returning a callback unchanged, capturing another function, two callbacks in one call, zero-argument callbacks, and multi-argument callbacks.
- Float/f32 and narrow-integer scalar capture, record-returning callbacks, ramification-returning callbacks, and ramification capture.
- Returning a function through another callback, three-layer closure capture, and early return of a closure.
- Choice branches with different captured environment shapes, parameter shadowing, and capturing functions stored in arrays.

Wrong-signature callbacks are rejected E3084 (`bad_callback`). Int-to-Float function arguments are also rejected (`callback_promotion`); implicit numeric argument conversion was not assumed as a language requirement.

An unannotated named factory used only as a callback fails E3128 (`callback_factory`), while declaring `base: Int => (Int => Int)` makes it work (`callback_factory_typed`). Retain this as an inference limitation/documentation point: the diagnostic explicitly requests a signature, so this audit does not classify it as a confirmed lowering defect. Inline expected-type flow and inference for separately named function values need distinct promises in the docs.

## Validation and build notes

All eleven selected existing regressions pass with exact expected output: 044, 079, 138, 141, 168, 199, 219, 238, 239, 240, and 363. Existing success cases do not cover the name collisions or recursive hidden-environment failures above.

Before the final pull, compiling accessor-section commit `5a3805a` with an older local compiler required temporary equivalent lambda spellings. Those temporary edits were fully restored. The final audit uses the subsequent remote `01fe6c1`, which refreshes the seed and includes array fixes, and was rebuilt from the unchanged current source. Only generated `src/version.dva` remains modified outside this audit directory.

Recommended order: fix lexical identity and function-value call resolution together; repair recursion with captured environments; then propagate expected signatures into lambda bodies before type-dependent choices. Preserve the successful alias and capture behaviors in regression tests.

Run `nu audits/2026-10-15-closures/run_probes.nu` to regenerate `rerun-results.json` with bounded compilation/runtime. The original evidence is preserved. This closure report is local; the prior array audit was committed/pushed and filed as Gitea #206–#213 under the preceding publication request.


## Gitea tracking

- [#214](https://gitea.gde.to/ike/dva/issues/214): closures: assign unique lexical identities to nested named functions
- [#215](https://gitea.gde.to/ike/dva/issues/215): closures: resolve stored function values before same-named nested declarations
- [#216](https://gitea.gde.to/ike/dva/issues/216): closures: pass captured environment in recursive nested calls
- [#217](https://gitea.gde.to/ike/dva/issues/217): typing: propagate expected callback signatures before annotating ramification lambdas
