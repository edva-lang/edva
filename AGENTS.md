# HARD RULES

These rules takes precedence over anything you can infer from the code or other documents.

- **`process/spec/` describes current expected behavior.** The documents in `process/spec/` (e.g. `process/spec/ramifications.md`) are authoritative spec texts written from the compiler and are kept current. If any of them conflicts with `src/*.dva`, the HARD RULES, or `GRAMMAR.md`, that is a discrepancy (a drift or a code change that was not propagated) — **notify the user** rather than silently trusting either side.

## Function values & type erasure

- **No RTTI, ever.** Function values never carry a runtime type/signature descriptor (no tagged values, no vtables, no runtime type tags). Types are fully erased: a function value is exactly the `{ fn_ptr, env_ptr }` closure pointer. Where a function value's type cannot be determined *statically*, the answer is **full unification** (a static type system that flows function types through assignments, params, and choices), never a runtime descriptor. The interim rejects unknowable cases with `E3103`/`E3128`.

## No defaulting to Int

 - Nothing must ever default to Int.  Throw an error instead.

## Unary operators

- ! negation (Flag negation; other rams/types are forbidden and emit E3008;
  Builder freeze is the unary `+` operator). `!` no longer measures String
  length — that is the separate `?` operator.
- + unary prefix (no trailing space): `+b` freezes a Builder into a String
  in-place ((1)$ buffer transfer); `+ 2` with a space stays the addition section.
- & unary prefix (no trailing space): `&b` — the writable buffer address of a
  Builder (RawPtr), and `&s` — the String data pointer (RawPtr), for FFI read
  targets. Unary `*` is eliminated; arithmetic multiplication `a * b` and
  operator sections `* 2` keep `*`.
- ? unary prefix: the length/count operator — `?s`/`?b` (String/Builder byte length), `?a`/`?m` (growable-array element count / map entry count), `?rec`/`?sl` (homogeneous-record / slice count). No mutation, no freeze. There is no `a(*)` length form.
- ++ copy for Strings, records, and growable arrays (Array / (T){})
- | or [..] is a branch in a choice operator, low precedence. The first branch may be preceded by an expression, then it's a condition, otherwise implicit "_" is inserted. Internally a choice is a **scrutinee applied to a match-function** — an ordered series of (guard, action) pairs plus an optional bare fallback; the syntax is sugar over that (`process/choice-matchfn.md`). Each branch is normalized to exactly one guard shape (`GuardKind`): `Case` (a comma OR-list of values/predicate refs, compared/applied to the scrutinee), `Predicate` (an explicit fn/lambda guard), `Variant` (tag labels, optionally binding the payload), or `Bare` (`|` — ram polarity test or trailing catch-all). Guarded branches chain **adjacently** — `x [1] "a" [2] "b"` — with no `|` between them; `|` before a guard is `E2096`.
- !| is choice sugar for "| (void) |": it skips the first branch and parses the next branch as if introduced by a plain '|'. `X !| Y` == `X | (void) | Y` — used for a write-or-panic on a RamNP write result: `a(i) = v !| _` unwraps the second (Error) slot and aborts, while the void first slot matches and yields nothing. An indexed write's RHS parses at the addition tier so the '!|' choice wraps the whole write.
- A value guard may be a comma OR-list: `x [1, 2, 3] body` matches when x equals ANY of 1, 2, or 3 (equivalent to chaining `[1] [2] [3]`). Commas in a predicate guard (`[< 0, 5]`) are a parse error.
- | if used in non-first or non-last position in a chain of branches must trigger a parsing error
- **A choice expression with one branch is NEVER exhaustive.** It evaluates as
  a side-effect statement ('.Unassignable' / '()'). Statement choices do not
  require fallback branches; single-branch choices ('cond | action') are standard.
- **Never use '| 0' as a dummy fallback in choices.** Choices in statement
  position or in side-effect-only functions ('=> ()') must never contain
  dummy '| 0' fallbacks — supplying dummy values corrupts the type of the
  choice to 'Int', causes type consistency violations, and is forbidden.
  Always write clean statement choices: 'cond | action'.
  Never add '| 0' or any dummy branch in an attempt to make a statement choice
  "exhaustive". If a choice is used in an expression position (assigned to a
  variable or returned), it must produce meaningful values of matching types
  across all branches.
- `::name = v`, `::name := v`, `::name: T` declares a **marked global variable**: inside functions, `name = expr` (or `::name = expr` or legacy `name ::= expr`) mutates the global without a local shadow. `::=` is **global mutation**: `x ::= v` writes the module/global binding `x`, bypassing any function-local shadow (a function's `x = v` / `x := v` bind a fresh local unless marked global). Mutates regardless of binding mutability; target must exist (E3123). Parser/codegen keep globals in a shadow-proof map.
- `#private` (single-line `#private fun = …` or an indented `#private` block) hides the following declaration(s) from importers: a private binding is registered under `module::#name` and is reachable only by a bare name inside its own module — the qualified `module::name` never resolves it (an importer sees it as undefined). Variables, functions, and types can be private.
- **Field-initialization tracking** (no `-:=`, no zero-fill on field-by-field construction): a forward-annotated composite (`x: T` then field writes) is NOT zero-filled. The compiler tracks which fields are definitely written — a field write `x.a = v` marks `a`; a whole-value assignment `x = <record>` marks the record whole. A read of an unwritten field is a compile error (E3130). A homogeneous record (array) requires **whole-value initialization** before any element read/write (E3131). Definite init is **must-init**: a field written in only some choice branches is not initialized after the join. Passing a partially-initialized composite to a function is rejected (E3132) — the callee could read an unwritten field. Nested records are tracked recursively.
- Recursive type declarations are allowed: a ram/enum type name is registered before its body parses, so a variant payload may reference the type itself ("Value: <String(String), Number(Float), Boolean(<>), Null, Array((Value[])), Object(((key: String, value: Value)[]))>"). Pointer-shaped payloads (Slice/Record/ram/enum) are stored directly in the union slot (never boxed); scalar payloads are boxed. **Forward references** are also allowed: a type atom naming a not-yet-declared type is deferred (a placeholder resolved at codegen against the fully-registered table), enabling mutual recursion across declarations ("Expr: <Pick(ChoiceExpr)>" before "ChoiceExpr: (cond: Expr, …)"). A deferred name that is never declared is reported at end-of-parse as the same E2014 "Unknown type name".
- minus "-x" means "0 - x" for integers and floats
- .!. bitwise negation

## Some other operators

- => is a function, no other meaning, param list is not optional, parens are not allowed
- Function signatures are declared separately from the body: `fun: Int, String => < Int | >` (a forward annotation whose type is a function signature — positional param types, `=>`, return type) then `fun = x, s => body`. The signature types the params and validates the body's return. **Inline parameter types are removed** — `fun = x: Int => ...` is rejected; types live only in the signature (or stay dynamic when no signature is given).
- Binding mutability: Dva uses `=` uniformly for bindings and assignments. Rebindable variables
  use trailing prime (`'`) identifiers (`x' = 10; x' = 20; x'' = 30`). Parameters are immutable
  and cannot be primed (`E2039`). The legacy `:=` operator is retired in user code. Interior
  mutations (`pt.x = 1`, `arr += 1`, `b += "x"`, `m ^ k = v`) do not require primed bindings.
  Local variables captured by writable lenses (`~~x'`) are promoted to shared cells.
- Cycle control: `-->` (break) and `--^` (continue) govern `@` cycles (with optional outer-level
  integer suffix `-->N`). `>--` is cycle escape returning `RamPN` `< T | >`: `<+ branch_value +>`
  on break, `<-->` on normal completion.
- Postfix `--!` propagates errors out of the enclosing function: valid on ramifications with a
  positive payload (`RamPP`, `RamPN`) or unit-success (`RamNP < | Error >`). Unwraps positive inline
  (yielding `()` for `RamNP`), and early-returns the negative ramification on failure.
- \ is removed — a parenthesized expression containing a free `_` desugars to `_ =>` (only the innermost parentheses; `(3 - 2 * _)` == `_ => 3 - 2 * _`). Operator sections stay.
- <, >, ==, !=, !<, !> are binary
- `==`/`!=` between two ENUM values compares both the variant TAG and PAYLOAD value
  (deep structural equality), yielding a bare Flag — `Some(5) == Some(5)` is true,
  `Some(5) == Some(7)` is false, `Some(5) == Noth` is false. If only tag matching is desired,
  use choices (`x [Some(_)] ...`). If a payload type does not support equality (e.g. `Fn` /
  closures), the comparison is rejected at compile time (`E3084`). Non-enum ramification values
  (unit rams, polarity rams, bare flags) keep the E3027 ban; ordering (`<`/`>`/`!<`/`!>`) on any
  ram/enum is E3127. A bare `==` is a valid statement and function-body return (it was rejected
  as E2038 to catch `=`/`==` typos — no longer).
- <+>, <->, <++>, <--> are ramification constants
- **All four ramification shapes are distinct types and are not compatible
  with each other.** The four shapes (RamNN `<>`, RamPN `<A|>`, RamNP `<|B>`,
  RamPP `<A|B>`) are distinct static types with incompatible representations
  (RamNN is bare `i1` `Flag`; single-payload pointer rams use null-pointer niche;
  others are unboxed register aggregates `{ i1 tag, i64 payload }` or heap unions).
  There is no implicit coercion or subtyping between any of the four shapes.
  A bare Flag `<+>`/`<->` never coerces to `<++>`/`<-->`. Rams of different
  shapes cannot be assigned to one another or passed where another shape
  is expected.
- **Ramification `Unit` slots have no runtime storage**: If a ramification slot
  type is `Unit` (`()`), it carries no runtime payload. Codegen must never
  emit an `alloca`, load, or store for a `Unit` payload slot (`alloca void`
  is illegal in LLVM IR and hangs/crashes LLVM).
- **Fallible indexing returns unboxed `{ i1, i64 }`**: Array index `a(i)` and
  map lookup `m(k)` return `< T | Error >` (`RamPP`). In typed compilation,
  all `RamPP` ramifications are unboxed register aggregates `{ i1, i64 }`,
  never heap-allocated union pointers (`{ i64, ptr }*`).
- **Ramification matching is positional-only. Bare `|` branches test the slots in order** (first branch = positive/left slot, second = negative/right slot); there is **no keyword-based way to name a ram's slots**. The internal slot names the compiler uses for ram tags (`Positive`, `Negative`, `Succ`, `Noth`) are compiler-internal and must never become valid ramification syntax — no such keyword may ever be accepted for matching or constructing a ram. Today: a named guard on a real ram is `E3125` ("ram conditions have no slot names — match positionally with bare '|' branches"), and a bare `Positive`/`Succ`/`Noth` label is `E3004` (undefined). If you add a feature, add positional/literal surface, never a keyword.
- Ramification payload constructors close with `+>` or `->` (never a bare `>`): `<+ p +>` / `<+ p ->` put p in the first slot, `<- p ->` / `<- p +>` put p in the second slot. Because `<`/`>` are never delimiters, comparisons inside payloads are unambiguous and unbracketed: `<+ a > b +>`. `+>` and `->` are distinct lexer tokens (`.PlusGreater`, `.Arrow`).
- .<. and .>. are the bit shifts (zero-fill / logical; the shift count is masked to operand width - 1 in codegen to avoid LLVM UB, wrapping modulo the width). `.>.` is shift right, `.<.` shift left.
- .|. bitwise OR and .&. bitwise AND; .!. is bitwise NOT (unary). All bitwise ops accept integerish types only (Int, Rune, i8..u64); floats/Strings/rams are rejected.
- Bitwise precedence (C-style, loosest to tightest): || < && < .|. < .&. < comparison < .<. .>. < + - < * / %. See src/precedence.dva.
- `&&` and `||` are short-circuit logical operators. On non-ram operands (Int truthiness, comparison results, bare flags) the result is a Flag (`<+>`/`<->`-style i1). A Flag and a heap ram are distinct static types and representations: `<+>`/`<->` never coerce to `<++>`/`<-->`; write the heap unit explicitly. On two heap rams, the result keeps the short-circuit winner and derives its layout only from variants that can be returned:
  - `a && b`: the positive slot is `b`'s positive slot; the negative slot may come from either operand and therefore must have exactly the same layout on both.
  - `a || b`: the positive slot may come from either operand and therefore must have exactly the same layout on both; the negative slot is `b`'s negative slot.
  - A payload slot and a unit slot are incompatible when both can win: the four ram layouts cannot represent a unit-or-payload slot. Report E3089. A bare Flag and a heap ram also cannot be combined with `&&` or `||`.
  - Comparison flags (`a > 0 && b > 0`), `!ram`, and module/user predicates (`str::is_digit(c)`) stay bare Flags.
- `$>>` is monadic bind over a ramification, restricted to rams with a **positive payload slot** (RamPP / RamPN): `lhs $>> rhs` lowers to `lhs | rhs(_) | <- _ ->` (RamPP, the negative payload propagates) or `lhs | rhs(_) | <-->` (RamPN, the negative unit propagates). The continuation `rhs` receives the positive payload and must return the same monad. A literal lambda continuation binds the payload to its first param directly; a named continuation is called as `rhs(_)`. Any other lhs layout (RamNP, RamNN, or a non-ram) is a compile error (E3091). Shares the addition tier with `$>` (left-assoc, so chains `a $>> f $>> g` are left-assoc; result type is Unassignable like `$>`).
- `$>` is feed / reverse application, and `$` is infix apply — both MULTI-ARGUMENT (application-ops.md): `f(a) $ b` == `f(a, b)` (append), `x $> f(a)` == `f(x, a)` (prepend); a bare fn side is single-argument (`f $ x` == `f(x)`, `x $> f` == `f(x)`). They sit BELOW the choice tier (apply `$` = tier 3, feed `$>`/`$>>` = tier 4, choice = 5), so the RHS absorbs the choice: `a $> b | c | d` == `a $> (b | c | d)` (feed a value into the function a choice selects), and `f $ a [1] x | y` == `f $ (a [1] x | y)`. `$>` is left-assoc, `$` right-assoc (`f $ g(a) $ b` == `f(g(a, b))`); the RHS of `$>`/`$` parses at the choice tier (so `2 + 3 $> sum + 4` == `(2+3) $> (sum + 4)` — parenthesize to feed tighter). The choice absorption is suppressed inside choice branch bodies. A call-shaped fn side (a call, or a Feed/Apply binary that lowers to one) flattens so pipelines chain (`data $> process(mode) $ extra` == `process(data, mode, extra)`). Lexes as its own `.DollarGreater` token (`$` stays standalone). See `operators.yaml` for the tower table.
- Builder appends: `b + c` is PURE (returns a NEW Builder with byte c appended, O(len) copy — same
  contract as String `s + n`); `b += c` is the in-place append (mutates b's buffer, `is_compound`
  assignment). A String RHS appends the whole string: `b += s` / `b + s` (in-place / pure), so
  `b += "hello"` builds directly. A String-concat RHS (`b += x + y`) is a peephole that appends
  each operand directly — no intermediate String is materialized. The RHS of `+=` parses at the
  addition tier so a following `|` stays with an enclosing choice. A Builder is created with
  `b = {n}` (`=` creates an empty buffer with capacity n); `+=` mutates regardless of the
  binding's mutability. Freeze `+b` transfers the buffer to a String and resets the Builder
  descriptor to empty `{0, 0, 0}`, preventing post-freeze aliased mutation.
- String/Builder have **no member access at all** — `.len` and `.data` are removed; length is
  `?s` / `?b`, the String data pointer is `&s`, the Builder buffer address is `&b`. `b = {n}`
  creates an empty builder buffer; a primed binding `b'` allows whole-value rebinding. `?b = n`
  (an integerish RHS) SETS the Builder's length — the report model after an FFI read:
  `req = {4096}` / `n = libc::recv(fd, &req, 4096, 0)` / `?req = n` / `s = +req`, no malloc/free.
  `b = (13, 10)` (a homogeneous record of integerish values) appends each element as a byte
  (range-checked 0..255) — a clean CRLF. `Builder` is a recognized type name: `b: Builder`
  annotates, and `f = b: Builder => ...` passes the caller's Builder by its `{ len, data, cap }`
  pointer, so a callee's `+=` mutates it in place. `&b`/`&s` are unary (no trailing whitespace);
  they pair with the `Addr`/`RawPtr` foreign-param rule so buffers are typed honestly. Unary `*` is
  eliminated; `* x` with a space stays the multiplication section.

## Numbers

- floats can't have a dangling dot at either side: .5, 1., 3.e4 are illegal, or at least don't parse as floats
- integer literals accept an explicit type suffix: `5i16`, `0xFFu8`, `0b101u16`, `9i64` (i8/u8..i64/u64)
- `#pragma number <type>` switches the default integer literal type for the rest of the file (positional; `default` restores Int). `#pragma number i16` then `#pragma number i64` is the standard way to mix i16 tables and i64 tables in one file.
- `expr {N}` is postfix repetition: a record of N copies of expr (`0 {3548}` = 3548 zeros). A `{` that **starts** an expression is the Builder literal `{expr}` (a Builder with capacity = expr, e.g. `{32}`), not repetition — the two never collide because repetition is postfix-only. Inside a record literal a `{N}` group splices flat: `(0, 1 {3}, 2)` = `[0,1,1,1,2]`.

## Types

Type names that compiler recognizes: ONLY Int, Float, String, Addr, Rune, Builder, Error, LLVM lowercase types, and composite types. Composite types never have symbolic names.
`Type` is the compile-time type-of-types value (metaprogramming, §process/archive/dva_metaprogramming_proposal.md): it names a type at compile time and is **erased** — a `.Type` value never exists at runtime (codegen rejects it, `E3129`). A `Type` value wraps a `^TypeInfo` (`.Primitive` for Int/Float/String/…, else a Record/Ram/Enum/Array/Slice/Function shape).
No other types must be ever recognized.

`Error` is the core record type `(code: Int, msg: String, file: String, line: Int, col: Int, context: (Int, Int))`. Its fields are inspectable like an ordinary record. Termination on error is explicit: choices binding Error (`| e => ...`) do not abort; explicit unwrap (`!!` or `a(i) | _ | _`) and write-or-panic (`a(i) = v !| _`) abort with the Error's fields printed (`Error <code>: <msg>\n  at <file>:<line>:<col>`). Growable-array reads/writes use it: `a(i)` yields `< elem | Error >` and `a(i) = v` yields `< | Error >` (out-of-range or uninitialized → the Error branch).

## Identifiers

Conformant to UAX31 (this rule may be simplified if feasible)

## Indentation and lines

Indentation uses spaces only or tabs only, mixing causes syntax error.
Indented block "INDENT {STATEMENT \n} DEDENT" is equivalent to ";" separated inline statements, ";" at the line end is error
Line length is not to exceed 100 characters.

style suggestion: multiples of 3 spaces for each intentation level

## Operators

The operators table MUST always be maintained current. It must list associativity, precedence, operand types and result types. There are several operators with differing semantics depending of the types.

**The single source of truth for the operator table is `operators.yaml`** (every operator's symbol, tier, binding powers, associativity, operand/result types, description). It is consumed by `tools/opgen/main.nu` (run by `build.sh`, checked by `run_tests.sh --check`) to generate `src/operators_gen.dva` and the GRAMMAR.md §1.6 table. Edit the YAML, not the generated files or the hand-maintained `src/precedence.dva` (types + checks only).

## Code terseness

* Expressions after =/:= and choice conditions must never be in parentheses. Correct if you encounter these.

## Biases

Never prioritize backward-compatibility. The language is being actively designed and change is natural.
[== value] is a code smell.  Use [value].
"| 0" is a code smell. Choices in statement position do not need to be exhaustive if a value is not expected (.Unassignable). Never insert dummy '| 0' to exhaust choices.
Expressions after '=' or ':=' or any #-directive must never be parenthesized.  If this doesn't compile, alert the user.

## Environment

For tools, favor scripting in nushell.

[ end of hard rules ]

---

# Project

`edva`: the native self-hosted compiler for the `dva` language, implemented
in Dva (`selfhost/src/`). Generates LLVM IR via the LLVM 18 C API, then shells
out to `clang` to assemble/link a binary. No README exists — `GRAMMAR.md` is a
supplementary doc (see "Docs" below before trusting it); the HARD RULES above
and the code are the real source of truth.

**Dva has no bare keywords at all** `if`, `else`, `for`, `while`, `fn`, `return`, `continue`, `import`, `break` are all ordinary identifiers with no special meaning — don't assume conventional control-flow keywords exist when reading or writing `.dva` code. `#use module_name` / `#use "path"` is the import directive (lexes to a distinct `.Import` token because of the leading `#`, not because the word "import" is special). Cycle control flow uses symbolic operators instead of a `break` keyword: `-->` breaks the innermost enclosing `@` cycle, `--^` continues it; an optional integer suffix targets an outer cycle (`-->2` breaks the second enclosing cycle, `--^3` continues the third, etc.). A cycle can be turned into a cycle-escape expression by appending `>--` followed by a branch body: `Iterable @ FnExpr [ ">--" BranchBody ]`. It explicitly returns `< T | >`: example `5 @ i => i [3] --> >-- 99` runs the cycle, and if the `-->` fires the branch value produces `<+ 99 +>`; if the cycle completes without breaking, the result is `<-->` (negative unit / absence). `>--` is its own token, so it is unambiguous (never `|` or `[..]`). Branch body may be a block (dedent to a valid outer level, e.g. col 0 for a top-level cycle) or inline on the same line.

## Environment requirements (easy to get wrong)

- Requires **`libLLVM-18` installed system-wide** — a hard link-time dependency,
  independent of any other LLVM/clang version also present.
- **`edva` must be linked with `-Wl,--export-dynamic`**
  (`-extra-linker-flags:"-Wl,--export-dynamic"`): compile-time evaluation
  (`#!`) JIT-compiles expressions and resolves symbols via process symbols.
- Requires **`clang` on `PATH` at runtime** — `edva` shells out to it to turn
  generated IR into a binary. Cross-compilation =
  `./edva foo.dva -target aarch64-linux-gnu` (plus cross-clang/linker on PATH).

## Build & test

- `./build.sh` — builds `edva` then runs the test suite.
- `./run_tests.sh` — builds `edva`, runs regression and differential suites.
- `./selfhost/test_driver.sh` — driver regression suite alone. Fast.
- **Wrap all test runs and audits in explicit timeouts and 4G RAM ulimit**:
  When running ad-hoc test scripts, batches, or compiler audits, always set
  timeouts and wrap executions in a 4 GB RAM limit (e.g.
  `bash -c 'ulimit -v 4194304; timeout 10s ./edva ...'`). In Python audit/test
  scripts, EVERY subprocess call (compilation, execution, and linking) MUST
  specify an explicit `timeout=...` parameter and `stdin=subprocess.DEVNULL`
  to prevent indefinite hangs from compiler loops or waiting on stdin.
- The 2 `tests/sudo/*` tests need real `sudo`; in sandboxes they fail with
  "command not found" — expected, not a regression.
- `./edva -repl` (or `--repl`) starts an interactive REPL
  (`selfhost/src/edva.dva`). It recompiles the whole session on every accepted
  line into scratch files under `/tmp/edva_repl.*` (not cwd) and runs it;
  verify manually with e.g. `printf 'x = 5\nprint $ x\n:q\n' | ./edva -repl`.

### Running a single integration test

`run_tests.sh` has no single-test flag. Fastest path is direct `edva` invocation
from the repo root:
```
./edva tests/pass/<name>.dva -r        # compile + run immediately
./edva tests/fail/<name>.dva           # expect nonzero exit (checks stderr)
```
- `edva` writes its output (binary, and `.ll` with `-ir`) into the
  **current directory**, named after the input file (`foo.dva` → `foo`,
  `foo.ll`). Only `*.ll`/`*.o`/`*.out` and the `edva` binary itself are
  gitignored — **delete any stray output binaries you create** (`rm -f <name>`)
  before committing; other names are not auto-ignored.
- Module resolution (`#use module` / `#use "a/b"`) tries, in order:
  (1) relative to the importing `.dva` file's own directory,
  (2) `<dir-containing-edva-binary>/std/`. The loader is **file-first**:
  a module is `<dir>/<name>.dva`; a same-named `<dir>/<name>/` directory is
  only a fallback (a multi-file module). This lets `std/net.dva` and
  `std/net/http.dva` coexist. The module prefix is the last path segment
  (`#use "net/http"` → `http::*`). Running `./edva tests/pass/x.dva` directly
  from the repo root just works — no `cd`/symlink needed.
- `tests/pass/<name>/` (a directory containing `main.dva`, e.g. `28_modules/`)
  is a multi-file module test — pass the directory itself to `edva`, not a file
  inside it.
- `./edva` with no args prints full usage (flags: `-r`, `-ir`/`--ir-only`,
  `-O0`..`-O3`/`-Os`/`-Oz`/`-O`, `-target <triple>`, `-h`).

### Diagnosing and recovering from compiler coredumps (SIGSEGV)

When `edva` crashes with a core dump (SIGSEGV, exit code 139 or 245) or times out:

1. **Read pre-crash diagnostics first**: `edva` usually prints compile errors
   (`E3004`, `E3017`, `E3027`, etc.) right before crashing. In `edva`, codegen
   often proceeds past errors with null `Addr(0)` values, which subsequently
   segfault inside LLVM C API calls. The printed errors are almost always the
   root cause of the crash.
2. **Never rerun a crashing command without changes**: Do not loop or retry
   blindly. Inspect the git diff of your changes (`git diff selfhost/src/`) and
   the diagnostics.
3. **Isolate the failing module**: When `selfhost/src/edva.dva` fails to compile,
   test each imported module independently to pinpoint which file has the bug:
   ```bash
   ./edva selfhost/src/parser.dva /tmp/t_p
   ./edva selfhost/src/annotate.dva /tmp/t_a
   ./edva selfhost/src/codegen.dva /tmp/t_c
   rm -f /tmp/t_p* /tmp/t_a* /tmp/t_c*
   ```
4. **Inspect stack trace with gdb**: If `edva` crashes without diagnostic output:
   ```bash
   gdb -batch -ex "run" -ex "bt 20" --args ./edva <args>
   ```
5. **Recovering a corrupted `edva` binary from seed**: If the `edva` executable
   is deleted or corrupted by a faulty stage build, regenerate it from the
   bootstrap seed:
   ```bash
   rm -f edva
   make edva   # links seed/edva.ll into edva automatically
   ```

## Docs — trust code over prose

`GRAMMAR.md` is a maintained, supplementary language doc (its operator table
and std-lib sections are kept current), but it can drift — when it conflicts
with `src/*.dva`, `std/*.dva`, or the HARD RULES above, the code and HARD
RULES win. Gitea issues (https://gitea.gde.to/ike/dva/issues) is the tracker for
known bugs and deferred work — check it before assuming a discrepancy you find
is new. Historic design records, superseded proposals, old plans, and
completed review notes live under `process/archive/` and are **to be ignored /
not read by default unless explicitly asked**; see
`process/archive/README.md`.

## Compiler internals worth knowing before editing

- `src/parser.dva` (~2.5k lines) and `src/codegen.dva` (~3.5k lines) are exercised by the test suite. When changing parsing or codegen behavior, add a case under `tests/pass/`/`tests/fail/` (with matching `.expected`/`.expected_err`) rather than relying on manual/ad-hoc verification.
- **Error messages are class-coded `Exyyy: ...`** — `x` is the class digit, `yyy` a per-message number. Classes: `1` lexer, `2` parser, `3` codegen, `4` runtime (generated code), `5` driver/CLI (`src/main.dva`), `6` REPL. Codes are assigned in order of first appearance per file; identical messages share one code. Positioned messages keep `[line:col]` as `E2yyy [l:c]: msg`. When adding a diagnostic, pick the next free `yyy` in the file's class; parser errors go through `parser_error(p, code, fmt, ..)`. `tests/fail/*.expected_err` substrings should match the **message body only** (no `Exyyy:` prefix) so renumbering doesn't break them.
- The HARD RULES' bare-`|`-in-middle-position error (`a | b | c | d` must fail because `c` is neither first nor last) is enforced in `parser_parse_choice_continuation` in `src/parser.dva` — don't reintroduce a bypass; see `tests/fail/17_middle_bare_pipe_choice.dva`.

## Gitea & Remote Tracking

- Web URL: `https://gitea.gde.to/ike/dva`
- API URL: `https://gitea.gde.to/api/v1`
- SSH Remote: `git@shut.gde.to:ike/dva.git`
- User: `ike` (Token: `7b6c32f9c8c07e7c53435384740512218525492a`)
- User (Issues): `leandra` (Token: `b0eaa18f14466cce2d30c16b48c304507992e529`)
- Server Host: `shut.gde.to` (port 3001, config `/etc/gitea/app.ini`)
- Config locations: `~/.config/tea/config.yml`, git local `gitea.*`
