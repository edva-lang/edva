# Closures — the full spec

**Status:** authoritative reference. Source of truth: `src/` (the compiler), the
HARD RULES in `AGENTS.md`, and `GRAMMAR.md` §2.8; this document assembles all of
it with options and examples. `process/spec/operators.yaml` is the operator
tower reference; `process/spec/ramifications.md` is the ramification reference.

A **closure** is dva's first-class function value: a `{ fn_ptr, env_ptr }`
fat pointer. It is how a lambda (or a nested named function) that references
an *enclosing function's* locals/params carries that state along with its code.
A function value with no captured state is the same two-word value with a null
env.

```dva
add = a => b => a + b     // "b => a + b" is a closure capturing a
add(3)(4)                 // 7
```

---

## 1. Representation — the two-word closure pointer

- A function value is **exactly** a pointer to a two-word struct
  `{ fn_ptr, env_ptr }` (`DVA_TWO_WORD_STRUCT_SIZE` = 16 bytes, arena-allocated).
  There is **no RTTI**: no tagged value, no vtable, no runtime type/signature
  descriptor. Types are fully erased at runtime.
- `fn_ptr` is the compiled function's code pointer; `env_ptr` is the pointer to
  the captured environment (a per-capture struct), or `null` when the function
  captures nothing.
- **Non-capturing function values are zero-cost to create:** a non-capturing
  function read as a value (a named function, or a lambda that captures
  nothing) is a pointer to a per-function **module-level constant**
  `{ fn_ptr, null }` — no per-value arena allocation, and LLVM can fold the
  call-site loads of the constant. Capturing closures still arena-allocate
  their env.
- **Known non-capturing calls skip the env check:** the `.Function` type
  records `fn_no_capture` (set by the value producers from the computed
  capture set, conservatively cleared by a signature merge that could mix a
  capturing and a non-capturing value). When a call site statically knows the
  callee captures nothing, it emits a plain `fn_ptr(args...)` call — no
  env-pointer load, no runtime `env != null` branch. A capturing (or unknown)
  callee keeps the full dispatch.
- A **named function read as a value** is `{ fn_ptr, null }`:

  ```dva
  dbl: Int => Int
  dbl = n => n * 2
  f = dbl          // f is a closure { dbl, null }
  f(5)             // 10
  ```

- Because the type is erased at runtime, a function value's **static** type —
  its `.Function` TypeInfo (param types, return type) — is threaded through the
  compiler statically: through assignments, parameters, choices, record fields,
  array/map elements, and ram/enum payloads (§7). Where that type *cannot* be
  determined statically, the compiler asks for **full unification** (a static
  type system that flows function types through the program); the interim
  rejects unknowable cases with `E3103` / `E3128` rather than guessing.

## 2. What a function value's type is

The static type is a `.Function` TypeInfo: a positional list of parameter types
plus a return type (`fn_param_types`, `fn_return_type`, and their per-position
`TypeInfo`s for composite/ram shapes). Written flat: `Int, Int => Float`.
A function type used *as a type* is parenthesized but still flat inside:
`(Int, Int => Int)` (`GRAMMAR.md` §2.8).

The type flows by **full unification**, not runtime lookup:

- An untyped lambda's type is inferred from the first call site's argument
  types (`f = x => x + 1; f(2)` types `x: Int`).
- A function with a declared signature (`fun: Int, String => < Int | >` then
  `fun = x, s => body`) is typed from the signature.
- A function **read as a value before any call and without a signature** has
  unknowable parameter types and is rejected (`E3128`) — parameter types are
  never defaulted to `Int` in that case.
- An indirect call whose return type cannot be resolved is `E3103`.

## 3. Creating a closure

### 3.1 A lambda that captures

```dva
mul2 = a => b => a * b      // inner lambda captures a
len_of: String => (Int => Int)
len_of = s => n => ?s + n   // captures a typed String param
```

The inner `=>` expression becomes a closure value when the enclosing function
runs. The capture set is computed by `codegen_lambda_captures`: every
enclosing-scope variable (param or local, in a non-main function) that the
lambda's body references, excluding the lambda's own params. Captures are
sorted by name for deterministic codegen.

### 3.2 A nested named function captures too

```dva
outer = x =>
   inner = y => x + y       // inner is a closure value capturing x
   inner(3)
outer(4)                    // 7
```

A local function definition is just a named lambda; it captures the same way
and becomes a closure stored in its variable.

### 3.3 A lambda that does not capture

A lambda referencing only its own params (or top-level/global state) is still
packaged as a `{ fn_ptr, null }` closure — the fat pointer is uniform; the env
pointer is simply null. This keeps every function value the same shape.

### 3.4 Function values from named functions

Reading a named function by name yields `{ fn_ptr, null }` — usable wherever a
function value is expected: stored, passed, returned, called.

### 3.5 Function values in ram/enum payload slots

```dva
#type Wrapped < C((Int => Int)), V(Int) >
mk = base => Wrapped(C, (x => x * base))   // closure in an enum payload
w = mk(6)
w [C g] print_int $ g(7)      // 42 — bind the payload and call it
   [V n] print $ n
```

A function payload is pointer-shaped and stored directly in the union slot
(never boxed), like String/Record/Slice payloads.

## 4. Capture semantics — copy-at-capture

Captures are **by value, at closure construction** (copy-at-capture):

- The env struct holds a **mutable copy** of each captured variable, typed by
  the variable's runtime LLVM type (scalars by value, pointers by pointer, a
  heap ram by pointer).
- The copy is taken when the closure is built — later changes to the enclosing
  variable do not affect the closure, and vice versa.
- Each closure owns an **independent** copy, so two closures over the same
  local diverge:

  ```dva
  make_counter = start =>
     n := start
     step => (n := n + step; n)
  c1 = make_counter(100)
  c2 = make_counter(1000)
  c1(1)     // 101
  c1(1)     // 102 — c1's own copy
  c2(5)     // 1005 — c2's copy, untouched by c1
  ```

- Capture is **transitive**: `mk = x => (y => (z => x + y + z))` — the innermost
  lambda captures the outermost param through the intermediate one.

## 5. Environment lifetime — escape analysis

A capturing lambda's env is allocated according to whether it **escapes** the
frame that builds it (`cg.lambda_escapes`):

- **Escaping** (the lambda is the function's return value, or otherwise outlives
  the frame): the env is **arena-allocated** (`dva_arena_alloc`) so it survives
  after the enclosing function returns:

  ```dva
  adder = base => (x => x + base)   // x => x + base escapes adder
  adder(100)(1)                     // 101 — env alive after adder returned
  ```

- **Non-escaping** (the lambda is called/used inline): the env is
  **stack-allocated** in the entry block (a hoisted alloca) — it stays live for
  the enclosing frame, which is long enough.

- A closure nested inside a *returned composite* (e.g. a record wrapping a
  closure) is still treated as escaping, so `mk = base => H((x => x * base, 1))`
  keeps the env alive after `mk` returns (§7).

## 6. Calling a function value

### 6.1 The indirect-call dispatch

Calling a function value dereferences the `{ fn_ptr, env_ptr }` closure and
branches on `env != null`:

- **Capturing**: calls `fn_ptr(env, args...)` — the env is an implicit first
  parameter.
- **Non-capturing**: calls `fn_ptr(args...)` plainly.

The callee's `.Function` TypeInfo selects the exact LLVM call signature
(parameter ABI types, return type), so the call is statically well-typed.

### 6.2 Calling forms

A function value is called directly (`f(7)`), through the feed/apply operators
(`f $ 7`, `7 $> f`), chained on a call's result (`mk(6)(7)`), through a member
(`h.fn(7)`), and after an unwrap (`fs(0) | _ | _` → call). See
`process/spec/operators.yaml` for the `$`/`$>` tiers.

### 6.3 Higher-order functions

```dva
apply_twice: #! T: Type, (T => T), T => T
apply_twice = f, x => f(f(x))
dbl: Int => Int
dbl = n => n * 2
apply_twice(dbl, 4)      // 16
```

A generic combinator's `#!` type parameters are inferred from the function
argument's signature; the function argument may itself be a capturing closure
(`adder(100)`) when its type is statically resolvable. An **untyped** lambda
param whose argument is itself a function still defaults to `Int` — a
higher-order lambda whose params are functions needs a declared signature
(`#! T: Type, (T => U), ...` or a concrete `(Int => Int)` param).

## 7. Function values in composite types

A function value stored in a record field, a growable-array element, a map
value, or a ram/enum payload keeps its `.Function` signature **through the
read**, so the value can be assigned and called without losing its type:

```dva
#type H (fn: (Int => Int), n: Int)
h = H((x => x * 6, 1))
f2 = h.fn
f2(7)              // 42 — read the field, then call
h.fn(7)            // 42 — member call (the member is evaluated and called)
h.fn $ 7           // 42 — $-apply on a member
(h.fn)(7)          // 42 — grouped member call

#type Fns ((Int => Int)){}
fs := Fns
fs += (x => x + 1)
f = fs(0) | _ | _  // a(i) is a < elem | Error > ram; unwrap, then call
f(5)               // 6

#type FnMap String ^ (Int => Int)
m := FnMap
m ^ "inc" = (x => x + 1)
fi = m ^ "inc" | _ | _
fi(5)              // 6
```

The threading is implemented in the member-read path (`.Function` fields set
`last_fn_type_info`), the ram-payload bind paths (identity extractor `| _ | _`
and variant guards `[C g]` set the bound variable's `.Function` type_info), and
the indirect-call dispatcher (which snapshots the callee's type before
evaluating arguments).

## 8. Closures and concurrency

`#spawn` accepts a capturing closure as a worker: it resolves the worker's
`UserFnInfo` from the closure's `.Function` TypeInfo, **deep-copies** the env
into the child arena (one field copy per capture), and passes the copy as the
worker's implicit first parameter. A worker that would capture a *function
value* inside its env is still rejected (`E3145`). Regressions:
`tests/pass/171_spawn_capturing_worker`, `tests/pass/172_spawn_lambda_target`.

## 9. What a function value is not

- **No closures-in-closures capture across `#spawn`** (`E3145`).
- **No runtime type descriptor** — a `Type` value (`.Primitive`, `.Function`,
  ...) is compile-time only and erased; codegen rejects a `.Type` at runtime
  (`E3129`).
- **An untyped higher-order lambda param passed a function** still types as
  `Int` — declare the signature.
- **A function read as a value with no signature and no prior call** is
  `E3128`; an indirect call with an unresolvable return type is `E3103`.

## 10. Tests

- `tests/pass/138_closures.dva` — capture, copy-at-capture, independent
  mutable copies, transitive capture, nested named functions.
- `tests/pass/79_closure_and_higher_order.dva` — top-level closure, multi-param
  lambdas, a factory returning a lambda.
- `tests/pass/199_closure_composites.dva` — function values in record fields
  (read-then-call, member call, `$`-apply, grouped), arrays, maps, and enum
  payloads; capturing closures in returned records.
- `tests/pass/167_indirect_call_composite_return.dva` — indirect calls returning
  records / rams / arrays / enums / slices.
- `tests/pass/171_spawn_capturing_worker.dva`, `172_spawn_lambda_target.dva` —
  closures as `#spawn` workers.