# Metaprogramming (`#!` CTFE) — the full spec

**Status:** authoritative reference. Source of truth: `src/` (the compiler,
notably `src/ctfe.odin` and the `.Type`/`#!` paths in `src/codegen.odin` and
`src/parser.odin`), the HARD RULES in `AGENTS.md`, and `GRAMMAR.md` §2.14.
`archive/dva_metaprogramming_proposal.md` is the original design proposal.

Dva's metaprogramming is **Compile-Time Function Execution (CTFE)** through
the symbolic prefix directive `#!`, with **`Type`** as a first-class
compile-time value. There are no macros, no templates, and no runtime
reflection: everything happens at compile time and is **erased** — a `Type`
value never exists at runtime (`E3129`). It gives dva generic functions,
type-generating records, and compile-time type dispatch without runtime cost.

```dva
identity: #! T: Type, T => T     // a generic function: T is compile-time
identity = x => x                 // only the runtime param appears in the body
a = identity(42)                  // T = Int, inferred from the argument
b = identity("hi")                // T = String

Pair: #! T: Type => (a: T, b: Int)  // a type GENERATOR: its type body IS the result
#type IntPair Pair(Int)             // instantiate it into a declared type
```

---

## 1. `Type` — the compile-time type value

`Type` is the **type of types**. A value of type `Type` is a handle to a
`^TypeInfo` — the compiler's description of a type (primitive, record, ram,
enum, array, map, slice, function). It is:

- **Compile-time-only.** A `.Type` value cannot be lowered to a runtime
  representation (`E3129`: "'Type' is a compile-time-only value and cannot be
  lowered to a runtime representation."). `t := Int; print $ t` is a compile
  error — `Type` has no runtime shape.
- **Structural for equality.** `codegen_type_equal` compares two `TypeInfo`s
  by **structure** (fields, payloads, signatures), not pointer identity — so
  `T == SomeGeneratedRamType` matches any type with that shape.
- **One handle per primitive.** Every primitive type (`Int`, `Float`,
  `String`, …) is one pointer-comparable `.Primitive` `TypeInfo`
  (`prim_type: ValueType`), so a `Type` value is one comparable pointer.

The `#! T: Type` parameter binds `T` to a `Type` value **scoped to the
compile-time parameter list** (`Parser.ct_scope`); inside the body, `T` is a
`.TypeVar` that the monomorphizer resolves to the concrete type at each
instantiation.

---

## 2. `#!` — the compile-time directive

`#!` lexes as its own `.CompileTime` prefix token and marks an expression for
compile-time evaluation. Two distinct uses:

### 2.1 `#! expr` — compile-time evaluation (CTFE)

`#! expr` forces the compiler to evaluate `expr` during compilation and
substitute the result:

```dva
v = #! 2 + 3          // the literal 5 is compiled in
s = #! "ab" + "cd"    // the literal "abcd"
b = #!(2 < 3)         // the literal 1 (a comparison is compile-time)
c = #! (2 < 3 | "yes" | "no")   // a compile-time choice -> "yes"
```

The CTFE evaluator (`src/ctfe.odin`) evaluates `#!` two ways, both
single-source-of-truth against `codegen_eval_expr` (no interpreter drift):

- A **tree-walking interpreter** runs first: it folds literals, `+ - * / %`
  arithmetic, comparisons (`< > == != !< !>`), logical `&&` / `||`, bitwise
  `.&.` / `.|.` / `.!.`, unary `!` / `.!.`, string `+`, `?s`,
  compile-time choices over scalar or String branches, and — **calls to pure
  user functions** whose bodies stay in the subset, **including generic
  (`#! T`) functions** whose bodies are pure-scalar (the runtime params bind
  to the interpreted arguments; `T` is simply not referenced by such a body).
  The interpreter binds the function's params and recurses; recursion is
  depth-bounded (128), so a self-recursive function is rejected rather than
  looped. **A function VALUE is a CT value** (`CtKind.Fn`), so `#!` is
  higher-order: a declared function passed as an argument is applied inside a
  combinator's body (`twice_g = f, x => f(f(x))` folds `#! twice_g(dbl, 10)`
  = 40; regression `tests/pass/215_ctfe_higher_order`).
- The **JIT** (a temporary module compiled through the real pipeline) is the
  fallback for whatever the interpreter cannot fold.

**Field reflection (2026-09-01):** a generic body can reflect over a bound
record type with no new syntax:

- `?T` on a bound record type is the compile-time **field count** (a CTTR
  extension of the length operator): `nfields = _ => ?T`.
- A generic can access fields **by index** (`x.0`, `x.1`) and monomorphizes to
  any record with that shape — the accessed fields' types dispatch per
  record type.
- A generic can iterate a homogeneous-by-type record (`?xs @ i`) and serialize
  each element (the element type `E` inferred from the per-element
  serializer).

Regression: `tests/pass/214_field_reflection`.

**Heterogeneous-record auto-iteration (2026-09-01):** a cycle over `0..?T`
whose body references `x.(i)` is **UNROLLED at compile time** — each copy
binds `i` to a constant, so the member access resolves to that field with its
static type (a runtime loop cannot index a heterogeneous record). The lexer
splits `..?` (`0..?T` lexes `0 .. ? T`), and `x.(i)` is a member index that
must resolve to a compile-time constant (`E3170`). Uniform operations (`==`)
then work across field types with no per-field type dispatch:

```dva
sum_fields = x =>
   acc := 0
   0..?T @ i => acc = acc + x.(i)   // Pt / Triple / any record
   acc

record_eq = a, b =>
   all := 1
   0..?T @ i =>
      a.(i) == b.(i) | 0 | all = 0   // per-field '=='
   out := all == 1
   out
```

Regressions: `tests/pass/217_field_iteration`, `tests/fail/200_dynamic_member_index`.

**Enum-variant iteration (2026-09-01):** the same unrolled-cycle machinery
works over a bound ENUM type: `?T` is the **variant count**, and `T.(i)` is
the i-th variant's label as a compile-time String (an out-of-range index is
`E3171`). `join_labels` / `labels_arr` iterate any enum's variants:

```dva
join_labels = _ =>
   out := {16}
   0..?T @ i =>
      i > 0 | out += "," | 0
      out += T.(i)
   !out
// join_labels(Color) == "Red,Green,Blue"
```

Regression: `tests/pass/218_enum_variant_iteration`. This completes the
reflection "core slice" (record field count, per-field access, per-field
iteration, enum variant count, per-variant label iteration).

**Deferred generic inference (2026-09-01):** a generic whose return type is a
function may leave a type param UNBOUND at the call site when the param is
reachable only from the returned function's signature; the returned function's
own call site resolves it. This is what makes a curried `const` possible
(the prelude's `const = x => _ => x` is this curried form):

```dva
const: #! A: Type, #! B: Type, A => (B => A)
const = x => _ => x
k = const(42)   // A = Int; B is deferred
k("ignored")    // B = String, resolved at the apply
```

So `#!` can now fold expressions built from declared pure functions:

```dva
double = n => n * 2
max2 = a, b => a > b | a | b
v = #! double(21)          // 42
m = #! max2(3, 7)          // 7 (a compile-time choice inside a call)
```

Anything outside the subset is `E3130`. `#!` does not do general code
generation or reflection — only constant folding.

### 2.2 Static Data Generation via `#!` into `.rodata`

Expressions evaluated with `#!` at file or module scope can generate static
composite tables (records, homogeneous arrays, maps):

```dva
TABLE = #! (10, 20, 30, 40, 50)
SQUARES = #! (0 * 0, 1 * 1, 2 * 2, 3 * 3, 4 * 4, 5 * 5)
MAP = #! ("start" ^= 1, "stop" ^= 2, "pause" ^= 3)
```

The compiler evaluates the constant structure during compilation and places it
directly into global constant read-only data (`.rodata`), eliminating runtime
heap allocation and startup initialization overhead.

### 2.3 `#! T: Type` — a compile-time type parameter

A signature may declare compile-time type parameters **before** runtime ones:

```
identity: #! T: Type, T => T
apply:    #! T: Type, (T => T), T => T
```

- The `#! T: Type` parameters are **erased from the runtime parameter list**.
  The function body binds only the runtime parameters:
  `identity = x => x` (no `T` in the binding).
- The identifier `T` is in scope in the body as a **`.TypeVar`** — usable in
  compile-time type dispatch (§4) and as a payload type.
- A `#! T` compile-time parameter is not passed at runtime: call sites
  **infer** it from the runtime arguments (§3).

### 2.4 Value-Level Compile-Time Parameters (`#! N: Int`, `#! S: String`)

Functions may take compile-time value parameters in addition to type parameters:

```dva
make_buffer: #! N: Int => Builder
make_buffer = !=> {N}

repeat_str: #! N: Int, String => String
repeat_str = s =>
   b := {N * ?s}
   N @ _ => b += s
   !b

format_pair: #! S: String, #! N: Int, String => String
format_pair = val => S + " (" + str::from_int(N) + "): " + val
```

- Value-level parameters are supplied explicitly at the call site:
  `b = make_buffer(64)`, `repeat_str(3, "abc")`.
- Compile-time expressions (e.g. `repeat_str(2 * 2, "hi")`) are folded and
  passed as constants.
- Functions monomorphize per unique compile-time value.

---

## 3. Generic functions

A generic function is a function whose signature carries `#! T: Type`
parameters:

```dva
identity: #! T: Type, T => T
identity = x => x

print_int $ identity(42)     // 42   (T = Int)
print $ identity("hi")   // hi   (T = String)
```

- **Monomorphization** — each distinct type instantiation is compiled
  separately (`describe::Int`, `describe::String`, …).
- **Type inference from arguments** — the runtime argument's type determines
  `T` (`identity(42)` → `T = Int`). You do **not** write
  `identity(Int, 42)` — the compile-time parameter is inferred, not passed.
- **Per-binding instantiation** — a call whose argument type is fixed binds
  that type once; different call sites with different types monomorphize the
  function separately.
- **A generic function is not a value.** `take = identity` (using the generic
  as a bare value) is `E3142` ("Cannot use the generic function … as a value —
  bind its type arguments at a call site first ('ident(Int)', '#! T: Type'
  inference)"). You cannot pass a generic where a concrete function value is
  expected without binding it to a type at a call site.

### 3.1 Generic function-typed parameters

A generic can take a function value whose signature is parameterized by `T`:

```dva
apply: #! T: Type, (T => T), T => T
apply = f, x => f(x)

inc: Int => Int
inc = n => n + 1
apply(inc, 41)          // 42 — f: T => T with T = Int
```

The `(T => T)` parameter's `.Function` TypeInfo is **structurally
substituted** with the bound `T` at each instantiation, so the callee's
signature is checked exactly.

---

## 4. Compile-time type dispatch

Inside a generic body, `T` is a `.TypeVar`. A choice whose scrutinee is `T`
uses `[]` guard syntax to dispatch per instantiated type, with untaken
branches pruned at compile time:

```dva
describe: #! T: Type, T => String
describe = x =>
   T
      [Int] "int:" + str::from_int(x)
      [String] "str:" + x
      | "other"

describe(5)    // "int:5"
describe("x")  // "str:x"
```

The legacy binary comparison form `T == Int | ... | ...` is also supported.

- Each guard (`[Int]`, `[String]`, `[u8]`, `[MyRecord]`, etc.) is resolved to a
  `TypeInfo` and matched against `T`'s instantiated type using structural equality.
- Comma OR-lists match multiple types: `[Int, String]`.
- Trailing bare `|` acts as a catch-all fallback branch. If no branch matches
  and there is no fallback, compile error `E3136` is emitted.
- The choice is decided at compile time per monomorphized instance; untaken
  branches are discarded and never emitted or type-checked for that instance (no
  runtime type tag exists).
- Works over every type kind (primitives, composites, user typedefs, functions).

### 4.1 Type Shape and Capability Predicates (`type::is_*`)

Guards may also use compile-time predicates from standard module `#use "type"`:

```dva
classify: #! T: Type, T => String
classify = _ =>
   T
      [Int, String] "exact_primitive"
      [type::is_record] "record"
      [type::is_enum] "enum"
      [type::is_ram] "ram"
      | "other"
```

Available compile-time predicates include:
- **Structural kinds:** `type::is_record`, `type::is_enum`, `type::is_ram`,
  `type::is_array`, `type::is_map`, `type::is_slice`, `type::is_homogeneous`,
  `type::is_unit`.
- **Numeric & scalars:** `type::is_int`, `type::is_float`, `type::is_numeric`,
  `type::is_pointer`.

Predicates can also be evaluated directly in `#!(...)` or inline compile-time
choices: `type::is_record(Pt) | "record" | "not record"`.

---

## 5. Type generators

A **type generator** is a `:`-form signature whose **type body IS its
result** — no `=` body follows (a `=` introduces a value; types are the
`:`-domain):

```dva
Pair: #! T: Type => (a: T, b: Int)
```

`Pair` is a compile-time function `Type => Type`. Instantiating it with a
concrete type substitutes `T` into every payload slot:

```dva
#type IntPair Pair(Int)       // (a: Int, b: Int)
#type StrPair Pair(String)    // (a: String, b: Int)

p: IntPair
p.a = 42
q: StrPair
q.a = "hi"
```

- **Instantiation syntax:** `#type <Name> <Generator>(<Arg>)` — the `#type`
  directive names the generated type (not `IntPair: Pair(Int)`).
- **Slot-payload substitution** — the bound `T` is substituted into `.Ram`,
  `.Enum`, and `.Array` payload slots as well as record fields, so a generator
  can build unions and collections parameterized by `T`.
- Generators can compose: `#type IntNode Node(Int)` where `Node` itself uses
  another generator.

---

## 6. Compile-time type reflection (CTTR)

A bound `#! T: Type` parameter used **as a value** materializes a fresh value
of its bound type — with **no new syntax**. `out := T` where `T` binds to a
growable-array type gives an empty array, a map type an empty map, a scalar
its zero. Combined with the existing `@` cycle and element reads, this makes
generic **collect / map / filter** over homogeneous records expressible in
plain dva:

```dva
map_f: #! T: Type, (Int => Int), T => T
map_f = f, xs =>
   out := T                 // an empty T-typed array (CTTR)
   ?xs @ i =>
      out += f(xs(i) | _ | 0)
   out

filter_f: #! T: Type, (Int => <>), T => T
filter_f = pred, xs =>
   out := T
   ?xs @ i =>
      v := xs(i) | _ | 0
      pred(v)
         | out += v
         | 0
   out
```

- `out := T` is resolved through the instantiation's **type binding**
  (`current_type_binding`), the same mechanism that resolves `T == Int` in
  type dispatch (§4) — the body is monomorphized per bound type, and the
  materialization is erased (no runtime type value exists).
- The generic body reads elements with the ordinary `xs(i)` ram-read and
  `?xs @ i` cycle; the element type comes from the bound array `TypeInfo`
  (which the monomorphizer threads to the parameter).
- The same works for **String-element** arrays (a generic `shout`) and,
  in principle, for maps.
- This is the prelude's `map`/`filter`-over-homogeneous-records gap closed:
  a generic combinator can now both read and *build* a `T`-typed container.

### 6.1 Record and Enum Field Reflection

The compiler provides static reflection facilities over record and enum types:

- **Field / Variant Count (`?T`)**: `?T` yields the number of fields in a
  record or variants in an enum as a compile-time `Int`.
- **Field / Variant Name (`T.(i)`)**: `T.(i)` with compile-time index `i`
  yields the i-th field name or variant label as a compile-time `String`.
- **Field Type in Type Position (`T.(i)`)**: When `T.(i)` appears in a type
  guard or comparison (`T.(i) [Int] ...` or `T.(i) == Int`), it resolves to
  the static `TypeInfo` of the i-th field.
- **Member Access (`val.(i)`)**: Accesses the i-th member of record value
  `val` at index `i`.
- **Concrete Types**: Works directly on concrete type identifiers
  (e.g. `Pt.(0)`, `Person.(1)`).

Combined with unrolled cycles `0..?T @ i`, generic functions can inspect,
serialize, and operate across heterogeneous records:

```dva
inspect: #! T: Type, T => ()
inspect = val =>
   0..?T @ i =>
      name := T.(i)
      T.(i)
         [Int]
            print $ name + ":int=" + str::from_int(val.(i))
         [String]
            print $ name + ":str=" + val.(i)
         |
            print $ name + ":other"
```

---

## 7. Inline `#! T` lambda parameters

A lambda may declare a compile-time parameter inline:

```dva
f = (x, #! T) => …   // (illustrative; the compile-time param is inferred)
```

The `#! T` parameter in a lambda's parameter list marks it compile-time, the
same erasure and inference rules as a signature-level parameter.

---

## 8. Scope & limitations

The metaprogramming layer is deliberately narrow. What it does **not** do:

- **No runtime `Type` values.** `Type` is erased (`E3129`); there is no
  runtime reflection, no runtime type tags, no `type_of(x)`.
- **No general CTFE.** `#! expr` folds only the small constant subset
  (literals, arithmetic, string `+`, `?s`) — `E3130` otherwise. No arbitrary
  compile-time function execution, no compile-time loops over types, no
  serialization/code generation from a type's fields.
- **No generics as values.** A generic function can't be a bare value
  (`E3142`) — it must be bound at a call site.
- **No type-erased containers.** A generic function's `T` is monomorphized;
  there is no dynamic dispatch or shared code across instantiations.
- **Param-typed function captures stay limited** — a `.Function`-typed
  parameter whose concrete closure shape isn't knowable at compile time cannot
  be deep-copied across a thread boundary (the no-RTTI constraint; the
  closures note in `ISSUES.md` and `process/spec/closures.md`).
- **CTTR and Reflection**: A bound `#! T` materializes a value of its bound
  type (arrays/maps/scalars), enabling generic collect/map/filter. Full record
  and enum reflection is supported via `?T`, `T.(i)`, and `val.(i)` with
  unrolled cycles (`0..?T @ i`), enabling generic serializers and inspectors.

Where it shines: the prelude's higher-order combinators are now generic
(`apply: #! T: Type, #! U: Type, (T => U), T => U`), so `(String => String)`
flows through them exactly like `(Int => Int)` — the original polymorphism
gap the design targeted.

---

## 9. Errors

| code | message | when |
|---|---|---|
| `E3129` | "'Type' is a compile-time-only value and cannot be lowered to a runtime representation." | a `.Type` value used at runtime |
| `E3130` | "'#!' expression is not compile-time evaluable (subset: literals, `+ - * / %`, comparisons, bitwise, `!` / `.!.`, string `'+'`, `'?s'`, scalar/string compile-time choices, and calls to pure CTFE user functions)." | `#! expr` outside the CTFE subset |
| `E3142` | "Cannot use the generic function … as a value — bind its type arguments at a call site first ('…(Int)', '#! T: Type' inference)." | a generic function taken as a bare value |
| `E3037` | "Function … expects N arguments, got M." | a runtime call's arity — compile-time params are not passed |

---

## 10. Complete worked example

```dva
#use "str"

// A generic identity, inferred at each call site.
identity: #! T: Type, T => T
identity = x => x
print_int $ str::from_int(identity(42))    // 42
print $ identity("hi")                 // hi

// Compile-time type dispatch, per instantiation.
kind: #! T: Type, T => String
kind = x =>
   T == Int
      | "int"
      | T == String
         | "str"
         | "other"
print $ kind(5)                        // int
print $ kind("x")                      // str

// A type generator instantiated into two record types.
Pair: #! T: Type => (a: T, b: Int)
#type IntPair Pair(Int)
#type StrPair Pair(String)

p: IntPair
p.a = 40
p.b = 2
print $ str::from_int(p.a + p.b)       // 42
q: StrPair
q.a = "hi"
print $ q.a                            // hi

// Generic higher-order application.
apply: #! T: Type, (T => T), T => T
apply = f, x => f(x)
inc: Int => Int
inc = n => n + 1
print $ str::from_int(apply(inc, 41))  // 42
```

Every example above was compiled and run against the current compiler.