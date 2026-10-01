# Enums — the full spec

**Status:** authoritative reference. Source of truth: `src/` (the compiler), the
HARD RULES in `AGENTS.md`, and `GRAMMAR.md` §2.12/§3.1; this document assembles
all of it with options and examples. `process/spec/ramifications.md` §13 is the
enum-vs-ram comparison; `process/spec/closures.md` and
`process/spec/custom-operators.md` are the other language references.

An **enum** (`ValueType.Enum`) is dva's **named, N-variant tagged union**: one
of N cases, each carrying its own label and an optional payload. Where a
ramification is the *polarity* machinery (two positional slots, success/error,
left/right), an enum is the *naming* machinery — a choice among genuinely
named alternatives, matched by label.

```dva
#type Color < Red, Green, Blue >
#type Value < Number(Int), Text(String), Flag(<>), Null >
#type Tree  < Node((Int, Tree)), Leaf >        // recursive
```

---

## 1. Representation — the `{ tag, payload }` heap union

Every enum value is a pointer to a two-word heap struct:

```
{ tag: i64, payload: ptr }
```

- **`tag`** is the variant's **slot index** (an `Int`, 0-based, in declaration
  order). This is what makes an enum value *structural*: the tag is the value's
  identity, and matching compares it.
- **`payload`** is a pointer to the variant's data. **Pointer-shaped payloads**
  (Slice, Record, ram/enum) are stored **directly** in the slot — the slot
  pointer *is* the value. **Scalar payloads** (Int, Float, Rune, Flag, …) are
  **boxed** into an arena word on construction. A **unit** variant (no payload)
  has a null payload.
- There is **no RTTI**: the value carries only `{ tag, payload }`. The variant
  names, payload types, and the enum's full shape live entirely in the
  compiler's `TypeInfo` (compile-time), never in the runtime value.

```dva
#type Opt < Nothing, Just(Int) >   // Nothing: tag 0, null payload
                                   // Just:    tag 1, payload = boxed Int
```

The `Enum` `TypeInfo` is a list of `EnumSlotInfo` (`{ label, has_payload,
payload_type, payload_record }`) — one per variant, in declaration order.

---

## 2. Declaring an enum

### 2.1 Inline form

```
#type <Name> < Label1, Label2( Type ), Label3( (T1, T2) ), … >
```

```dva
#type Color < Red, Green, Blue >
#type Token <Id, Num, Str, Eof>
#type Value < Number(Int), Text(String), Flag(<>), Null >
```

- **At least two variants are required** — `#type A <>` is `E2070`
  ("An enum declaration needs at least two variants"). An enum with one case is
  just a value.
- Variants are separated by commas; trailing commas are fine.
- The declaration name is registered **before** its body parses, so an enum may
  reference itself (`Tree` above).

### 2.2 Block form

A newline + indentation opens a block whose lines are labels; a matching
dedent and a closing `>` end it:

```dva
#type Color <
   Red
   Green
   Blue
>
```

### 2.3 Labels

- **Labels are uppercase by convention.** A lowercase label is a *non-fatal
  warning* ("enum label 'x' in '…' is lowercase; labels are uppercase by
  convention so lowercase variable names can't collide with them"). The
  uppercase convention matters because labels share the bare-name namespace
  with variables (§5): an uppercase label can never be shadowed by a variable,
  and a lowercase variable can never collide with a label.
- A variant's label is a fresh identifier; two variants in one enum must not
  share a label.

### 2.4 Payloads

A variant may carry **one** payload type, written `Label(Type)`:

```dva
#type Value < Number(Int), Text(String), Flag(<>), Null >
```

- **Multi-field payloads** are a single *record* payload type, parenthesized:
  `Label((T1, T2))`. The guard binds the whole record; read its fields
  positionally.

  ```dva
  #type Tree < Node((Int, Tree)), Leaf >
  showt = t =>
     t
        [Leaf] "leaf"
        [Node p] "node:" + str::from_int(p.0) + "(" + showt(p.1) + ")"
  ```

- **A bare Flag payload** is written `Label(<>)` — `Boolean(<>)` in the
  canonical recursive example. It carries a `<>` value (`<+>` / `<->`).
- The payload type may itself be an enum, a ram, a record, an array/slice, a
  function value (`Label(T => U)`), or another named type — anything storable.
- **Payload storage rule:** pointer-shaped payloads (Slice/Record/ram/enum) are
  stored directly in the union slot (never boxed); scalar payloads (Int, Float,
  Rune, Flag, …) are boxed. This is invisible at the language level — the
  guard binds the payload value either way.

### 2.5 Recursive enums and forward references

Recursive *enums* are allowed (recursive *records* are not — records embed
their fields inline, so a self-field is an infinite type; enums recurse through
the heap `{ tag, payload }` union).

- **Direct recursion:** the enum name is registered before its body parses, so
  a variant payload may name the enum itself:

  ```dva
  #type Tree < Node((Int, Tree)), Leaf >
  #type Expr <
     Var(String)
     Add((Expr, Expr))
     Number(Int)
  >
  ```

- **Forward references / mutual recursion:** a payload naming a not-yet-declared
  type is deferred as a placeholder and resolved at codegen against the
  fully-registered table — so two enums can reference each other:

  ```dva
  #type Expr < Pick(ChoiceExpr) >      // ChoiceExpr declared later
  #type ChoiceExpr (cond: Expr, …)
  ```

  A deferred name that is never declared is reported at end-of-parse as the
  same `E2014` "Unknown type name" as an ordinary unknown type.

---

## 3. Constructing values

There are **three** ways to produce an enum value. They all land on the same
heap union; choose by context.

### 3.1 The constructor — `Enum(Label)` / `Enum(Label, payload)`

The enum type name used as a function — the **canonical, always-works** form
(especially for payload variants and inside `#use`d modules):

```dva
Color(Red)                        // unit variant
Value(Number, 5)                  // payload variant
Value(Text, "hi")
Value(Flag, <+>)                  // Flag payload
Value(Null)                       // unit variant, same constructor
Tree(Node, (1, Tree(Leaf)))       // multi-field payload (a record)
```

The label is the **first argument**; the payload (if any) is the second. A unit
variant takes only the label. The constructor also coerces an already-typed
value: `Color(c)` where `c` is already a `Color` is an identity pass-through
(`TokType(token)` in the lexer is exactly this).

### 3.2 The qualified label — `Enum::Label`

Scopes the label to its enum — the P1.5 spelling, and the fix for an ambiguous
label (`E3105`, §5):

```dva
Color::Red
Value::Null
```

`Enum::Label` resolves the enum type by name and builds the unit variant at
that label's slot. It works for **unit** variants; a **payload** variant needs
the constructor (`Value(Number, 5)`) — `Enum::Label(payload)` is not a thing.

**`Enum::Label` works with `#use`d modules** — both spellings:

```dva
#use "colors"
c = colors::Color::Red        // from the IMPORTER: mod::Enum::Label
// and inside module colors' own code, a bare "Color::Red" resolves to the
// module-local enum.
```

### 3.3 The bare label — `Label`

A bare uppercase name that isn't a variable evaluates to its enum's unit
variant (structurally the tag Int):

```dva
c = Blue          // the Blue variant of the (unique) enum declaring Blue
```

Bare labels are a **global namespace**: they resolve against *every* declared
enum. Two enums declaring the same label make a bare use **`E3105`**
("Enum label 'Y' is ambiguous — declared by multiple enums; qualify the variant
as 'Enum::Y'"). Qualify (`Enum::Label`), use the constructor (`Enum(Label)`),
or use the label inside a guard (guards are type-directed and never ambiguous,
§4).

---

## 4. Matching — choices are the enum's pattern match

An enum value is matched by a **variant guard** in a choice: `[Label]` for a
unit variant, `[Label payload]` to also bind the payload:

```dva
show: Value => String
show = v =>
   v
      [Number n] "num:" + str::from_int(n)
      [Text s]   "str:" + s
      [Flag]     "flag"
      [Null]     "null"
```

- The guard's label is looked up in the scrutinee's enum type (type-directed —
  never ambiguous, even if another enum has the same label).
- **`[Label]`** matches the unit variant; **`[Label name]`** matches and binds
  the payload to `name` (the whole payload — read a multi-field record's
  fields positionally, `p.0` / `p.1`).
- Guarded branches chain **adjacently** — `x [Red] 1 [Green] 2 [Blue] 3` — with
  no `|` between them; `|` before a guard is `E2096`.
- **Exhaustiveness:** an enum choice is **exhaustive when every variant has a
  guard** — no trailing bare `|` fallback is needed:

  ```dva
  f: Color => Int
  f = c =>
     c
        [Red] 1
        [Green] 2
        [Blue] 3     // all three variants guarded → exhaustive, no bare fallback
  ```

  If a variant is unguarded and there is no bare catch-all, the choice is
  non-exhaustive (the same `E3011`/`.Unassignable` surface as a non-exhaustive
  ram choice).
- **A branch body that is itself a bare-`|` choice must be parenthesized**:
  `[Boolean b] (b | "true" | "false")`. An unparenthesized `b | "true" |
  "false"` in a branch body parses its `|` as the *enclosing* choice's
  continuation (`E2024`).
- Payload variants can also be matched by a bare `|` when the payload is a ram
  (the enum value is a heap union, so it feeds the same choice machinery as a
  heap ram), but the label guard is the natural spelling.

### 4.1 Variant Tag Equality (`==` / `!=`)

Binary `==` and `!=` between two enum values of the same enum type compares
their **variant tag** (the payload is ignored) and yields a bare `Flag` (`<>`):

```dva
#type Opt < Some(Int), Noth >

a = Opt(Some, 5)
b = Opt(Some, 7)
c = Opt(Noth)

print $ a == b | "same tag" | "different"    // "same tag" (both are Some)
print $ a == c | "same tag" | "different"    // "different"
print $ a != c | "not equal" | "equal"       // "not equal"
```

- **Tag comparison only**: Payloads are not compared; `Some(5) == Some(7)` is
  true because both values carry tag `Some`.
- **Bare `==` allowed**: A bare `==` expression is a valid statement (its
  result is discarded) and a valid function-body return value.
- **Ordering is forbidden**: Relational ordering (`<`, `>`, `!<`, `!>`) on
  enums is rejected with `E3127`.

### 4.2 Deep Pattern Destructuring

Enum variant guards support nested pattern destructuring over composite
payloads:

```dva
#type Expr < Lit(Int), Add((Expr, Expr)), Mul((Expr, Expr)) >

eval: Expr => Int
eval = e =>
   e
      [Lit n] n
      [Add (Lit a, Lit b)] a + b
      [Add (x, y)] eval(x) + eval(y)
      [Mul (_, Lit 0)] 0
      [Mul (x, y)] eval(x) * eval(y)
      | 0
```

- **Nested variant patterns**: `[Add (Lit a, Lit b)]`.
- **Wildcard subpatterns**: `[Mul (_, Lit 0)]`.
- **Adjacent Branch Grouping**: When adjacent branches match the same variant
  tag, the compiler groups them under a single tag switch dispatch.

---

## 5. Labels as values — the global namespace and qualification

Bare labels (§3.3) resolve in a **global namespace** — a label is visible
everywhere, and a bare use is `E3105`-ambiguous when two enums share it. The
compiler enforces the escape hatches:

1. **Uppercase convention at declaration** — a lowercase label is warned, so a
   lowercase variable name can never collide with a label.
2. **`Enum::Label` qualification** (§3.2) — scopes the label to its enum.
3. **The constructor** `Enum(Label)` (§3.1) — type-directed, never ambiguous.

Labels also live in the same resolution path as undefined-variable detection,
so a typo'd variable that happens to match a label silently becomes that
variant — arguably fine, it *is* a value. The lowercase-convention warning
closes the accidental-collision direction.

---

## 6. Enums in `#use`d modules

An enum declared in a module is registered under its qualified name
(`module::Enum`) and exported to importers:

```dva
#use "colors"                 // colors.dva: #type Color < Red, Green, Blue >
c = colors::Color::Red         // qualified label from the importer
c2 = colors::Color(Red)        // or the constructor
```

Inside the module's own code, a bare `Color`/`Color::Red` resolves to the
module-local enum (through `codegen_prefixed_type_name`), so a module can use
its own enums without self-qualification. `Enum::Label` and `Enum(Label)` both
work in both positions. A bare label `Red` inside an importer is ambiguous
resolution across *all* loaded enums (module-local and imported) — qualify when
in doubt.

---

## 7. Enums vs rams

Both are `{ tag, payload }` heap unions, but they answer different questions
(see `process/spec/ramifications.md` §13):

| | ramification | enum |
|---|---|---|
| cases | exactly two, positional | N named variants |
| matched by | bare `|` (positional) | `[Label …]` guards (named) |
| polarity | `&&` / `\|\|` / `$>>` / `!` apply | none |
| meaning | positive/negative, success/error, left/right | genuinely named alternatives |

```dva
#type Opt    < Int | >         // a ram: Some Int | None (polarity)
#type Color  < Red, Green, Blue >  // an enum: named cases
```

Pick a ram for two-slot polarity; pick an enum when the cases are named and may
be many. The two interoperate: an enum value is a heap union, so it can sit in
a ram's slot (`< Color | Error >`), be the positive payload of a fallible
read, and be matched by label once unwrapped.

---

## 8. Errors

| code | message | when |
|---|---|---|
| `E2070` | "An enum declaration needs at least two variants, got '<>' in '…'" | `#type A <>` |
| `E2071` | "Expected a variant label in enum declaration '…', got '…'" | a non-identifier where a label belongs |
| `E2014` | "Unknown type name '…'" | a deferred (forward-referenced) payload name never declared |
| `E3105` | "Enum label '…' is ambiguous — declared by multiple enums; qualify the variant as 'Enum::…'." | a bare label declared by two enums |
| `E3117` | "Enum '…' has no variant '…'." | `Enum::Label` (or `mod::Enum::Label`) names a nonexistent variant |
| `E3127` | "Ordering on enums is not supported" | `< > !< !>` on enums |
| `E3103`/`E3128` | (function-value typing) | an enum payload holding a function value whose type cannot be determined statically — full unification rejects the unknowable case |

---

## 9. Complete worked example

```dva
#use "str"

// A JSON-ish value: two scalar payloads, a flag payload, a unit.
#type Value <
   Number(Int)
   Text(String)
   Boolean(<>)
   Null
>

// A recursive expression tree via a multi-field payload.
#type Expr <
   Num(Int)
   Add((Expr, Expr))
   Mul((Expr, Expr))
>

render: Value => String
render = v =>
   v
      [Number n] str::from_int(n)
      [Text s] s
      [Boolean] "bool"
      [Null] "null"

eval: Expr => Int
eval = e =>
   e
      [Num n] n
      [Add p] eval(p.0) + eval(p.1)
      [Mul p] eval(p.0) * eval(p.1)

print $ render(Value(Number, 42))      // 42
print $ render(Value(Text, "hi"))      // hi
print $ render(Value(Boolean, <+>))    // bool
print $ render(Value(Null))            // null
print $ render(Value::Null)            // null  (qualified unit label)

// Bare labels are values too, when unambiguous.
print $ render(Null)                   // null

tree = Expr(Mul, (Expr(Add, (Expr(Num, 2), Expr(Num, 3))), Expr(Num, 4)))
print $ str::from_int(eval(tree))      // (2 + 3) * 4 = 20
```