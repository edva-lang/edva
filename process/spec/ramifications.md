# Ramifications — the full spec

**Status:** authoritative reference. Source of truth: `src/` (the compiler), the
HARD RULES in `AGENTS.md`, and `GRAMMAR.md` §2.12 + §3.1/§3.3; this document
assembles all of it with options and examples. `process/ramifications.md` is
the condensed companion reference.

A **ramification** (`ram`, `ValueType.Ramification`) is dva's two-slot,
polarity-tagged value — the language's boolean / option / result machinery in
one type. Its slots are **positional**: *first* (positive / left) and *second*
(negative / right), and are **never named** when matched. Polarity is what
makes a ram more than a two-variant enum: it feeds the bare-`|` choice,
`&&`/`||`, `$>>`, `!`, and the `Error` convention *structurally*, with no
labels.

---

## 1. The four layouts

**All four ramification shapes are distinct types and are not compatible with each other.**
`RamNN` (`<>`) is the built-in `Flag` (`ValueType.Flag`, runtime `i1`);
`RamPN`, `RamNP`, and `RamPP` are ramifications (`ValueType.Ramification`).
In typed compilation, ramifications are optimized to avoid heap allocations:
1. **Null-pointer niche:** For single-payload ramifications (`RamPN <A|>` and
   `RamNP <|B>`) whose payload is a guaranteed non-null pointer (`String` or
   `Record`), the ram is represented directly as the payload pointer itself
   (8 bytes), where `null` represents the unit slot (`<-->` for `RamPN`,
   `<++>` for `RamNP`).
2. **Unboxed register aggregate:** For other ramifications carrying payloads
   that fit in registers (`<Int | >`, `<Float | >`, `< | Error>`,
   `<Int | Float>`, etc.), the ram is represented as an unboxed aggregate
   `{ i1 tag, i64 payload }` (16 bytes, align 8) in CPU registers and stack
   frames (`alloca`), eliminating all heap and scalar boxing allocations.
Each of the four shapes represents a distinct static type. There is no
implicit coercion or compatibility between any of them: a bare Flag
(`<+>`/`<->`) never coerces to a heap unit (`<++>`/`<-->`), and different ram
shapes cannot be unified, assigned to one another, or substituted where another
shape is expected.

The two-letter name describes the **positive then negative** slot:
`P` = payload, `N` = unit.

| layout | declaration | first (positive) | second (negative) | runtime repr | role | ValueType |
|---|---|---|---|---|---|---|
| `RamNN` | `<>` | unit | unit | bare `i1` | `Flag` / `Bool` | `.Flag` |
| `RamPN` | `< A \| >` | payload `A` | unit | ptr niche or `{ i1, i64 }` | `Option<A>` / `Maybe<A>` | `.Ramification` |
| `RamNP` | `< \| B >` | unit | payload `B` | ptr niche or `{ i1, i64 }` | fallible unit / `Result<(), B>` | `.Ramification` |
| `RamPP` | `< A \| B >` | payload `A` | payload `B` | unboxed `{ i1, i64 }` | `Either<A, B>` / `Result<A, B>` | `.Ramification` |

```dva
#type Opt    < Int | >         // Some Int | None
#type Fall   < | String >      // Ok unit | Err String
#type Either < Int | String >  // Left Int | Right String
#type Flag   <>                // a bare truth flag (declaring it is pure noise — see below)
```

- `RamNN` (`<>`) is **built in** as the `Flag` type; `<+>` / `<->` are literals. Never
  declare `Flag <>` — it adds nothing (the self-hosted lexer review dropped
  exactly that alias).
- A heap ram's unit branch must use its slot's **canonical** spelling: `<++>`
  for the first slot, `<-->` for the second. `<+>`/`<->` are the RamNN i1 flags
  and are *not* a heap-ram unit (`E3083`).
- Negation (`!`) is valid **only** on `Flag` (`RamNN`). Negating any other ram shape
  (heap rams) is forbidden and emits `E3008`.

---

## 2. Declaring a ram

### 2.1 Ad-hoc (no `#type` needed)

The inline type annotation `<>`, `< A | >`, `< | B >`, `< A | B >` is a *type
expression*, usable anywhere a type goes (a signature, a parameter, a field):

```dva
f: Int => <Int|>              // inline ram return, no #type anywhere
f = n =>
   n !< 0
      | <+ n / 2 +>           // positive slot, payload
      | <-->                  // negative slot, unit

print_int $ (f(9)  | v => v | 0)   // 4
print_int $ (f(-1) | v => v | 0)   // 0
```

### 2.2 Named (`#type`)

Declaring a name only *names* the shape so it can be reused across signatures
and validated at construction sites:

```
RamTypeDecl ::= "<>"                     (* RamNN *)
              | "<" TypeName "|" ">"     (* RamPN *)
              | "<" "|" TypeName ">"     (* RamNP *)
              | "<" TypeName "|" TypeName ">" (* RamPP *)
```

The `|` separates the positive (left) and negative (right) slots. Each slot
either carries a payload of the declared type or is a bare unit.

---

## 3. Literals

### 3.1 Unit spellings

Four unit spellings carry four distinct tags:

| literal | meaning | repr |
|---|---|---|
| `<+>` | first-slot **flag** (both slots unit) | bare `i1` |
| `<->` | second-slot **flag** (both slots unit) | bare `i1` |
| `<++>` | first-slot **unit** of a *heap* ram | `{ tag, payload }` |
| `<-->` | second-slot **unit** of a *heap* ram | `{ tag, payload }` |

`<+>` is the positive truth flag, `<->` the negative. `<++>`/`<-->` are the
heap ram units.

### 3.2 Payload forms

The payload forms wrap one expression. The **prefix** selects the slot (`<+` =
first, `<-` = second); the **closer** decides whether the *other* slot also
carries a payload:

| literal | slot filled | other slot | layout |
|---|---|---|---|
| `<+ p +>` | first | payload | `RamPP` |
| `<+ p ->` | first | unit | `RamPN` |
| `<- p ->` | second | payload | `RamPP` |
| `<- p +>` | second | unit | `RamNP` |

A matching-sign closer (`<+ … +>`, `<- … ->`) keeps both slots as payloads; an
opposite-sign closer (`<+ … ->`, `<- … +>`) makes the other slot a bare unit.

Because `+>`/`->` are two-character lexer tokens (`.PlusGreater` / `.Arrow`),
`<` and `>` are **never delimiters** — comparisons inside a payload are
unbracketed:

```dva
a = <+ 5 > 3 | "big" | "small" +>   // the payload is the whole choice "5 > 3 | ..."
b = <- 9 > 5 | "gt" | "le" +>       // negative payload, RamPP
```

Ramification payload constructors **always** close with `+>` or `->` — never a
bare `>`.

---

## 4. Construction & validation

Two ways, same result:

1. **Construct through the declared type name** (verifies the tag and payload
   against the declared slots):

   ```dva
   #type Num < Int | >
   half: Int => Num
   half = n =>
      n !< 0 | Num(<+ n / 2 +>) | Num(<-->)
   ```

2. **Let a signature's inline type pin the bare literal** (no name needed):

   ```dva
   f: Int => <Int|>
   f = n => n !< 0 | <+ n / 2 +> | <-->
   ```

### 4.1 Flags and heap units (`E3083` / `E3090`)

A Flag and a heap ram unit are separate values with separate representations.
`<+>` and `<->` are bare `i1` Flags; `<++>` and `<-->` are heap unions. There
is no coercion in either direction. A heap ram's unit branch must be written
with its canonical heap spelling.

```dva
#type R < | Float >        // positive slot is unit
n1 = R(<++>)               // explicit positive heap unit
#type L < Int | >          // negative slot is unit
n2 = L(<-->)               // explicit negative heap unit
```

---

## 5. Polarity & truth

Polarity is *operationally significant* — every ram operator keys on it:

- A ram is **positive** when it occupies the first (left) slot, **negative**
  when the second.
- `<+>` is true, `<->` is false (the truth flags).
- **Comparison results** (`a > b`), **`!ram`**, and **predicates** all stay
  bare Flags (`<>`, `i1`) — they do not heap-allocate.

```dva
x > 0                  // a bare Flag (i1)
is_digit(c)            // a predicate returning < >
a(i)                   // < elem | Error > (RamPP)
e ^ k                  // < value | Error > (map lookup)
```

---

## 6. Matching — choices are the ram's pattern match

Rams are matched **positionally** with bare `|` branches. The first branch
tests the first slot, the second branch the second. The matched slot's payload
binds to the branch's lambda parameter (`_` ignores it):

```dva
half(9) | v => str::from_int(v) | "none"   // first-slot payload -> v

sock | fd => do_thing(fd) | err => print $ "failed: " + err
```

This is the **only** way to destructure a ram. There is no `==` on rams
(`E3027`), no coercion out of one, and **no named-guard matching on a real
ram**: `r [Positive a] ... [Negative b]` parses but is rejected at codegen with
`E3125` ("ram conditions have no slot names — match positionally with
bare `|` branches"). The `[Positive]`/`[Negative]`/`[Succ]`/`[Noth]` labels
are the parser's internal names for `<+>`/`<->`/`<++>`/`<-->` and only matter
for an enum whose variants happen to carry those labels.

#### Invariant — no keywords in ram syntax

No single keyword (`Positive`, `Negative`, `Succ`, `Noth`, `Some`, `Err`, …)
is ever valid ramification syntax — neither for **matching** nor for
**construction**:

- a named guard on a real ram is `E3125` (match positionally with bare `|`);
- a bare `Positive` / `Succ` / `Noth` label (or `E(Positive)` construction) is
  `E3004` (undefined) — rams are built from the literals (§3) or a declared
  name (§4), never from a keyword;
- the tag names above are **compiler-internal** (the strings a `.Variant` AST
  node and `TAG_*` constants carry). They appear in `print` output of a ram
  ("Positive"/"Negative") purely as a display — that display is **not** syntax,
  and it must never be used to match or construct.

This invariant is a HARD RULE (see `AGENTS.md`): any future feature must add
positional/literal ram surface, never a keyword naming a slot.

### 6.1 Exhaustiveness

- **A choice expression with one branch is NEVER exhaustive.** It evaluates as
  a side-effect statement (`.Unassignable` / `Unit`). Attempting to assign or
  consume it as a value is a compile error (`E3032`/`E3022`).
- `r | a => ... | b => ...` (two bare branches) covers **both** slots → a
  **value** (exhaustive), routed through the merged-result path.
- `r | a => ...` (one bare branch) is a **statement** (`.Unassignable`): the
  positive slot runs `a`, nothing runs otherwise.
- A single guarded branch (`x [pred] block`) is never exhaustive → a
  side-effect statement, `.Unassignable`.
- Non-exhaustive statement choices never require dummy fallbacks. Writing `| 0`
  as a dummy fallback is an anti-pattern and a code smell that causes type
  consistency violations.

### 6.2 Identity extractor `| _`

A branch whose body is the bare `_` variable extracts the **payload of the
matched slot** (the parser flags it `is_identity_extractor`). It is the
mechanism behind the unwrap-or-panic idioms — the payload is taken as-is
(whatever the slot carries), so it works when both slots carry payloads of the
same type, or when the other slot's payload is the poisonous `Error` (which
aborts on extraction, §9):

```dva
a(i) | _ | _          // in-bounds: extract the element; OOB: extracting the Error aborts
a(i) = v !| _         // write-or-panic: the void first slot matches, the Error aborts
```

Because `_` must already be bound to extract, a bare `n | _` outside a lambda
or cycle body is `E3003`.

### 6.3 The fallible-array idioms

Growable-array and map operations are built on the `Error` convention (§9):

```dva
a(i)      →  < elem | Error >   (RamPP)   // in-bounds vs OOB/uninitialized
a(i) = v  →  <      | Error >   (RamNP)   // Ok unit vs OOB
e ^ k     →  < value | Error >  (RamPP)   // map lookup
```

- `a(i) | _ | _` — **unwrap-or-panic**: match the first slot; the second
  (`Error`) branch aborts with the Error's fields.
- `x!!` — **postfix unwrap**: sugar for `x | _ | _` at Tier 16 (postfix/apply,
  left-associative). On `RamPP <A | B>`: yields `A` (positive payload) and
  aborts on negative slot (poisonous Error panic). On `RamPN <A | >`: yields
  `A` and aborts on negative unit slot. On `RamNP <| B>`, bare `Flag`, or
  non-ram operand: compile error (`E3091`).
- `a(i) = v !| _` — **write-or-panic**: `!|` is sugar for `| (void) |`, so the
  void first slot matches and yields nothing and the second (`Error`) slot
  unwraps-or-aborts.

---

## 7. Logical operators `&&` / `||` (short-circuit, winner layouts)

On two **heap rams**, the result is the short-circuit **winner with its payload
intact**. Its layout is derived only from variants that can be returned:

- `||` stops when the first operand is *positive* (first slot) and returns it;
  `&&` stops when the first operand is *negative* (second slot).
- `a && b`: the positive result slot comes only from `b`; the negative result
  slot can come from either operand, so those negative slots must have exactly
  the same layout.
- `a || b`: the positive result slot can come from either operand, so those
  positive slots must have exactly the same layout; the negative result slot
  comes only from `b`.
- A shared result slot cannot combine a unit with a payload, nor unequal
  payload types: the four ram layouts have no unit-or-payload slot. This is
  `E3089`. A bare Flag and a heap ram cannot be combined by `&&` or `||`.
- The result is a bare `i1` Flag only when both operands are Flags; otherwise
  the result is the heap `{ tag, payload }` union.
- **Comparison flags** (`a > 0 && b > 0`), **`!ram`**, and **module/user
  predicates** (`str::is_digit(c)`) all stay bare Flags.
- On **non-ram operands** (Int truthiness, comparison results, bare flags) the
  result is a `Flag`.

```dva
#type L < Int | >        // left carries Int, right unit
#type R < Float | >      // left carries Float, right unit
#type E < Int | String > // left carries Int, right carries String

a_pos = L(<+ 10 ->)      // L: positive Int
a_neg = L(<-->)          // L: negative unit (Noth)
b     = R(<+ 3.5 ->)     // R: positive Float
e     = E(<- "err" ->)   // E: negative String

m1 = a_pos && b          // R: pos from b, shared negative unit
m2 = a_neg && b          // R: negative unit from a
m3 = a_pos || e          // E: shared positive Int, neg from e
m4 = a_neg || e          // E: negative String from e
```

Precedence (C-style, loosest to tightest): `||` < `&&` < `. | .` < `.&.` <
comparison < shifts < `+ - $> $>>` < `* / %`.

---

## 8. Negation `!`

`!` is **type-directed**:

- On a **Flag** (`RamNN`, bare i1): plain logical NOT (`!<+>` ↔ `!<->`).
- On any **heap ram** (all other ram shapes: `RamPN`, `RamNP`, `RamPP`): **FORBIDDEN** (`E3008`).
- On a **Builder**: freezes the builder buffer into a String.

```dva
!is_digit(c)      // negate the predicate result (bare Flag)
!<+>              // <->  (logical NOT of a Flag)
!<++>             // E3008: negation forbidden on heap rams
```

Comparison results and predicates already are bare Flags, so `!` on them is
the plain logical NOT.

### 8.1 Polarity cast to `RamNN` (`Flag`): `<>(x)` and `x $> <>`

To convert any ramification (`RamPN`, `RamNP`, `RamPP`, `RamNN`) to a bare
`Flag` (`RamNN` / `i1`), use the type-cast constructor `<>(x)` or pipeline
feed `x $> <>`.

- A **positive slot** (unit or payload) yields `<+>` (true).
- A **negative slot** (unit or payload) yields `<->` (false).
- Zero runtime overhead: lowers directly to checking the polarity tag
  (`tag == 1 || tag == 2`), straight-line IR, zero allocations, no branches.
  For niche rams, tests for non-null/null pointer; for unboxed rams, extracts
  the tag bit; for `RamNN`, an identity pass-through.

```dva
opt: <Int|> = <+ 42 ->
flag1 = <>(opt)          // <+>
flag2 = opt $> <>        // <+>

err: <|String> = <- "fail" ->
flag3 = <>(err)          // <->
flag4 = err $> <>        // <->
```

---

## 9. Monadic bind `$>>`

`$>>` is monadic bind over a ramification, restricted to rams with a **positive
payload slot** (RamPP / RamPN only; any other layout is `E3091`):

- RamPP (Either): `lhs $>> rhs` ≡ `lhs | rhs(_) | <- _ ->` — a negative lhs
  **propagates its negative payload**.
- RamPN (Option): `lhs $>> rhs` ≡ `lhs | rhs(_) | <-->` — a negative lhs
  propagates the unit.

`rhs` receives the **positive** payload and must return the same monad. A
literal lambda binds the payload to its first param; a named continuation is
called `rhs(_)`. `$>>` shares the addition tier with `$>` and chains
left-associatively (`a $>> f $>> g` is `(a $>> f) $>> g`).

```dva
#type Either < Int | String >
ok_val = Either(<+ 42 +>)
err_val = Either(<- "boom" ->)

double = n => Either(<+ n * 2 +>)

r1 = ok_val $>> double        // 84 (positive payload fed, result re-wrapped)
r2 = err_val $>> double       // "boom" (negative payload propagated)
r3 = ok_val $>> (n => Either(<+ n + 1 +>))   // 43 (inline lambda continuation)
```

---

## 10. Feed `$>` (reverse application)

`lhs $> fn` == `fn(lhs)`. Shares the addition tier with `+`/`-`/`$>>`
(left-assoc), so `2 + 3 $> sum + 4` == `((2 + 3) $> sum) + 4`, and
`2 $> f $> g` == `g(f(2))`.

```dva
double = n => n * 2
print_int $ (42 $> double)        // 84
print_int $ (42 $> double $> double)   // 168
```

---

## 11. The `Error` convention

`Error` is the core record
`(code: Int, msg: String, file: String, line: Int, col: Int, context: (Int, Int))`,
and its value is **poisonous**: constructing `Error(...)` is inert only when
the value is placed directly into a ram/enum payload slot
(`<- Error(...) ->`); anywhere else — or the moment an `Error` is unwrapped
from a ram and a choice branch binds it — the program aborts with the fields
printed (`Error <code>: <msg>` / `at <file>:<line>:<col>`).

The fallible array/map operations are built on this (§6.3). The idioms:

```dva
a(i) | _ | _           // unwrap-or-panic: match the elem, ignore the Error
a(i)!!                 // postfix unwrap sugar for a(i) | _ | _
a(i) = v !| _          // write-or-panic: skip the void first slot, abort on Error
```

### 11.1 Postfix Unwrap (`!!`)

Postfix `!!` (Tier 16) is sugar for `x | _ | _`. It unwraps the positive
payload inline. If the ram contains a negative slot or an `Error`, it aborts
execution with a panic and prints the diagnostic.

### 11.2 Postfix Propagate (`--!`)

Postfix `--!` (Tier 16) propagates errors out of the enclosing function:
- If the operand is positive, it unwraps the positive payload inline.
- If the operand is negative, it early-returns the negative ramification from
  the enclosing function.
- Enclosing function must return a ramification (`E3173`).
- Operand's negative slot must match the enclosing function's negative return
  slot (`E3149`).

---

## 12. Forbidden operations

| operation | error | reason |
|---|---|---|
| `a == b` on rams | `E3027` | ram tags are tested by choice branches, not `==` |
| `flag [1]` value guard on a bare-Flag cond | `E3139` | a ram never coerces to another type; use the ram's branches |
| named guard `[Positive a]` on a real ram | `E3125` | rams have no slot names; match positionally with bare `\|` |
| `!` on a payload ram | `E3008` | no boolean truth to negate |
| heap-ram unit as `<+>`/`<->` | `E3083` | use the canonical `<++>`/`<-->`; Flags do not coerce |
| middle bare `\|` | `E2024` | bare `\|` only as first (left/positive) or last (right/negative / catch-all) branch |
| `$>>` on RamNP/RamNN/non-ram lhs | `E3091` | a positive payload slot is required |
| incompatible possible winners in `&&`/`\|\|` | `E3089` | one result slot cannot be both unit and payload or carry unequal payloads |
| Flag and heap-unit conversion | `E3090` | `<+>`/`<->` and `<++>`/`<-->` never convert |
| `--!` outside ram function | `E3173` | valid only in ram-returning function |
| `--!` incompatible negative | `E3149` | negative return slot must match |

There is also **no `?` length** on a ram (that's for String/Builder/array/map/
record/slice) and **no member access** on a ram.

---

## 13. Rams vs enums

Both are `{ tag, payload }` heap unions, but a ram carries **polarity** and an
enum carries **names**:

- **ram:** exactly two positional slots, matched with bare `|`, usable in
  `&&`/`||`/`$>>`/`!`.
- **enum:** N named variants with payloads, matched with `[Label …]` guards,
  no polarity operators.

So pick a ram when the two cases have a positive/negative, success/error,
left/right meaning; pick an enum when the cases are genuinely named.

---

## 14. Operator & precedence summary

| operator | operands | result | notes |
|---|---|---|---|
| `\|` (choice) | ram cond, bare branches | payload of matched slot | positional; first=positive, second=negative |
| `&&` / `\|\|` | heap ram, heap ram; or Flag, Flag | ram (winner-derived layout) or bare Flag | short-circuit (§7) |
| `&&` / `\|\|` | non-ram truthiness | Flag | `a > 0 && b > 0` |
| `!` | Flag / unit ram | Flag | logical NOT (§8) |
| `!!` | RamPP/RamPN | payload | postfix unwrap sugar `x \| _ \| _` (§11.1) |
| `--!` | RamPP/RamPN | payload | postfix propagate operator (§11.2) |
| `$>>` | RamPP/RamPN, fn | Ramification | monadic bind (§9); `E3091` otherwise |
| `$>` | lhs, fn | `fn(lhs)` | feed / reverse application (§10) |
| `!|` | — | — | choice sugar `X \| (void) \| Y` (skip-first) |
| `<>(x)` / `x $> <>` | any ram | Flag | explicit polarity cast to Flag (§8.1) |

Precedence tiers (loosest to tightest): choice (`\|`, `[..]`) < `\|\|` < `&&` <
`. | .` < `.&.` < comparison < `.>.`/`.<.` < `+ - $> $>>` < `* / %` <
postfix unwrap/propagate (`!!`, `--!`).

---

## 15. Complete worked example

A small parser-like routine that returns an `Either`-shaped ram and chains
through every mechanism:

```dva
#use "str"

#type Num < Int | >        // Option
#type LexResult < String | String >   // Either: a token or an error message

safe_half: Int => Num
safe_half = n =>
   n !< 0 | Num(<+ n / 2 +>) | Num(<-->)

// Compose with $>>: only positive payloads flow through.
twice: Int => Num
twice = n => safe_half(n) $>> (m => Num(<+ m * 2 +>))

// Match positionally, binding the payload.
print $ (safe_half(10) | v => "half=" + str::from_int(v) | "none")
print $ (safe_half(-1) | v => "half=" + str::from_int(v) | "none")

// Short-circuit a fallible default (|| returns the winner with its payload).
default = LexResult(<+ "kw" +>)
winner = default || LexResult(<- "missing" ->)
print $ (winner | v => v | v)   // "kw" — the positive payload, intact

// unwrap-or-panic over a growable-array read (the read is < elem | Error >).
#type Arr (Int){}
g := Arr
g += 1
g += 2
g += 3
print_int $ (g(0) | _ | _)   // 1
```
