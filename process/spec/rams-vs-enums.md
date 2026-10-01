# Rams vs Enums — polarity, not names

**Status:** authoritative reference. Source of truth: `src/` (the compiler), the
HARD RULES in `AGENTS.md`, and the two parent documents — `process/spec/
ramifications.md` (the ram spec) and `process/spec/enums.md` (the enum spec).
This document is the dedicated comparison: when the two shapes are the same,
where they diverge, and which to pick.

A **ram** and an **enum** are the *same heap union* with *opposite organizing
principles*:

- a **ram** is ordered by **polarity** — exactly two *positional* slots
  (positive/left, negative/right), no names;
- an **enum** is ordered by **names** — N *labeled* variants, each with an
  optional payload.

```
#type Opt     < Int | >              // a ram: Some Int | None     (polarity)
#type Color   < Red, Green, Blue >   // an enum: named cases       (names)
#type EitherR < Int | String >       // ram: Left Int | Right String
#type EitherE < Left(Int), Right(String) >  // enum: the same shape, labeled
```

Both compile to `{ tag, payload }`, matched by a choice, and interoperate. The
differences are *operational*, not representational.

---

## 1. Same bones — the `{ tag, payload }` heap union

| | ram | enum |
|---|---|---|
| runtime value | `{ tag, payload }` heap pointer (or a bare `i1` for `<>`) | `{ tag, payload }` heap pointer |
| RTTI | none — slots live in the `TypeInfo` only | none — labels live in the `TypeInfo` only |
| `TypeInfo` shape | `Ram((RamSlotInfo, RamSlotInfo))` — two slots | `Enum(EnumSlots)` — N `EnumSlotInfo`, one per variant |
| a slot is | `{ has_payload, payload_type, payload_record }` | `{ label, has_payload, payload_type, payload_record }` |

An enum slot is literally a ram slot **plus a label**. Consequently a
two-variant enum is *isomorphic* to a ram:

```
#type EitherR < Int | String >              // positional: first, second
#type EitherE < Left(Int), Right(String) >  // named:      Left,  Right
```

Both are the same union; the enum just names what the ram leaves positional.
If you strip the labels off a two-variant enum you get a ram; if you name a
ram's two slots you get a two-variant enum.

> The sugar direction is **not** "rams are sugar over two-variant enums". It is
> the reverse: a **two-variant enum is a ram with its slots named** (and N
> generalizes beyond two). And even that undersells rams — on top of the bare
> union, rams carry a *polarity calculus* (truthiness, `!`, `&&`/`||`, `$>>`)
> that no named enum has (§5). Stripping labels and *adding polarity*: that is
> what a ram does to an enum.

---

## 2. Declaring

```dva
// Rams — four distinct shapes (incompatible types):
// All four ramification shapes are distinct types and are not compatible with
// each other. RamNN is bare i1 Flag; the others are heap Ramification {tag, payload}.
#type Flag   <>                // RamNN: two unit slots (a bare i1 Flag)
#type Opt    < Int | >         // RamPN: positive payload, negative unit (heap)
#type Fall   < | String >      // RamNP: positive unit, negative payload (heap)
#type Either < Int | String >  // RamPP: both slots carry payloads (heap)

// Enums — N named variants, at least two (E2070):
#type Color < Red, Green, Blue >
#type Value < Number(Int), Text(String), Flag(<>), Null >
#type Tree  < Node((Int, Tree)), Leaf >        // recursive
```

- A ram's **inline type** (`< Int | >` in a signature) needs no `#type`.
- An enum's variants are **comma-separated labels**; a payload is `Label(Type)`,
  a multi-field payload is `Label((T1, T2))` — one record.
- A ram's slots are written by *position*; an enum's by *name*. There is no
  way to name a ram's slots (`E3125`), and no way to match an enum's variants
  positionally by number.

---

## 3. Constructing

```dva
// Rams — positional literals only; the prefix picks the slot, the closer
// decides whether the OTHER slot is a payload or a unit:
#type Num < Int | >
n = Num(<+ 10 ->)     // positive slot, Int 10; negative is unit
n2 = Num(<-->)        // negative unit (Noth)
e = Either(<+ "ok" +>)   // RamPP: positive "ok", negative is a payload

// The unit spellings:
<+>   // positive Flag (i1)   — RamNN only
<->   // negative Flag (i1)   — RamNN only
<++>  // positive unit of a heap ram
<-->  // negative unit of a heap ram

// Enums — named construction, three spellings:
Color(Red)                 // constructor, unit variant
Value(Number, 5)           // constructor, payload variant
Color::Red                 // qualified label (unit variants)
Red                        // bare label (unambiguous enums only, E3105 otherwise)
```

Both shapes reject keywords that name slots/variants in the *other* syntax:
ram slot names (`Positive`, `Negative`, `Succ`, `Noth`) are compiler-internal
and never valid ram surface; an enum's labels are its own namespace.

---

## 4. Matching

```dva
// Ram — bare | branches test the slots POSITIONALLY (first = positive):
half = n => n !< 0 | <+ n / 2 +> | <-->
half(9)  | v => str::from_int(v) | "none"   // 4  (positive payload -> v)
half(-1) | v => str::from_int(v) | "none"   // "none"

// Enum — [Label ...] guards match by NAME:
show = c =>
   c
      [Red] 1
      [Green] 2
      [Blue] 3

// The same shape, both matchings:
r = Either(<+ 42 +>)
e = EitherEnum(Left, 42)
r | _ | 0                       // 42  (bare pipe, positional)
e [Left n] n [Right s] 0 | 0    // 42  (label guard, named)
```

- A ram has **no named guards**: `r [Positive a] ...` is `E3125` — match
  positionally with bare `|`. The `Positive`/`Negative`/`Succ`/`Noth` labels
  are internal tag names only.
- An enum's natural match is **labels**; guards chain adjacently
  (`x [Red] 1 [Green] 2 [Blue] 3`, no `|` between them; `|` before a guard is
  `E2096`).
- **Exhaustiveness:** a ram is exhaustive with its two bare branches (or one
  branch = a statement); an enum is exhaustive when every variant is guarded.
  Either shape can also use a trailing bare `|` catch-all.
- **`_` (the identity extractor)** unwraps the matched slot's payload:
  - on a ram's **payload slot** — any ram with a payload, `r | _ | 0` ✓;
  - on a ram with **no payload at all** (`RamNN` `<>`) — `E3018`
    ("no payload context");
  - on an **enum variant payload** — via the guard body, `e [Some _] _` ✓
    (the `_` in body position extracts the bound payload);
  - bare `| _ |` **on an enum cond** — not the right shape: enums match by
    label, and the bare extractor reads the fixed left slot (`E3020`).

---

## 5. What rams have that enums don't — the polarity calculus

An enum is a *neutral* tagged union; a ram is *opinionated* — its two slots
are ordered, and every ram operator keys on that order:

| mechanism | what it does | enum? |
|---|---|---|
| truthiness | a `<>` is an `i1`; `f \| a \| b` tests polarity | no |
| `!` | negates Flag (`<>`) only (`!<+>` ↔ `!<->`); other rams are forbidden and emit `E3008` | no |
| `&&` / `\|\|` | short-circuit; returns the **winner with its payload**. For `&&`, the RHS supplies the positive slot and both negative slots must match; for `\|\|`, both positive slots must match and the RHS supplies the negative slot. Unit/payload or unequal shared slots are `E3089`; Flags only combine with Flags. | no |
| `$>>` | monadic bind over the positive payload (RamPP/RamPN; `E3091` otherwise) | no |
| `!|` | choice sugar `X \| (void) \| Y` — write-or-panic | no |

```dva
#type L < Int | >        // left Int, right unit
#type R < | Float >      // left unit, right Float

a_pos = L(<+ 10 ->)      // positive Int
a_neg = L(<-->)          // negative unit
b     = R(<- 3.5 +>)     // negative Float

m1 = a_pos && b          // first positive, so && evaluates RHS -> b
m2 = a_pos || b          // first positive, so || short-circuits -> a_pos (10)
m3 = a_neg || b          // first negative, so || falls through -> b

x $>> double             // feed the positive payload through a monadic chain
a(i) = v !| _            // write-or-panic (skip the void first slot, abort on Error)
```

None of this applies to an enum — variants are flat labels; there is no "the
first one is more true".

---

## 6. What enums have that rams don't — the naming machinery

| mechanism | what it does | ram? |
|---|---|---|
| labels | each variant has a name, a first-class value | no — slots are positional |
| N variants | more than two cases, in declaration order | no — exactly two |
| `Enum::Label` | qualifies a unit label to its enum | no |
| bare `Label` | a label used as a value (global namespace) | no |
| `E3105` | ambiguity when two enums share a label — qualify | no |

```dva
#type Color < Red, Green, Blue >
#type Fruit < Apple, Blueberry >

Color::Red              // qualified — unambiguous
Red                     // bare — fine if unique
#type X < Blue >        // if two enums declare "Blue", a bare use is E3105
```

An enum's labels are *named alternatives*; a ram's slots are *positions*.
A ram cannot express "the third case" — it has no third case.

---

## 7. The decision guide

| situation | pick |
|---|---|
| exactly two cases, one is "good"/success/positive, the other "bad"/error/negative | **ram** — you get `\|\|`, `&&`, `$>>`, `!`, truthiness for free |
| two cases that are genuinely named, no polarity | either — a two-variant enum is a named ram |
| three or more distinct named cases | **enum** — rams only hold two |
| a success/error flow where the error must abort when unwrapped | **ram** with the `Error` convention (`< A \| Error >`) |
| a union of named shapes (a JSON value, an AST node) | **enum** |
| you want to negate, short-circuit, or monadically bind | **ram** |
| you want to read the code's intent from names | **enum** |

The two interoperate rather than compete: an enum value is a heap union, so it
can sit **inside** a ram's slot:

```dva
#type Fetch < Color | Error >      // a ram whose positive slot is an enum
c = Fetch(<+ Color::Red +>)
c | col => show(col) | _          // unwrap the ram, then match the enum by label
```

---

## 8. Error quick-reference

| code | message | shape |
|---|---|---|
| `E3125` | "ram conditions have no slot names — match positionally with bare `\|` branches" | named guard on a ram |
| `E3027` | "Operator 'Equals' cannot be applied to ramifications" | `==` on a ram |
| `E3008` | negation forbidden on heap rams | `!` on any heap ram (RamPN, RamNP, RamPP) |
| `E3018` | "Cannot use payload extractor '_' without payload context" | `_` on a `RamNN` (`<>`) |
| `E3085` | bare-pipe on a non-ram condition | `\| x` first branch when the cond isn't a ram |
| `E2070` | "An enum declaration needs at least two variants" | `#type A <>` |
| `E3105` | "Enum label '…' is ambiguous" | a bare label shared by two enums |
| `E3117` | "Enum '…' has no variant '…'" | `Enum::Label` names a nonexistent variant |

---

## 9. The same shape, twice — a worked pair

The same "Int or a message" value written both ways, showing what stays the
same and what differs:

```dva
#use "prelude"

// Ram spelling — polarity, positional.
#type ResR < Int | String >
goodR = ResR(<+ 42 +>)
badR  = ResR(<- "boom" ->)

// Enum spelling — names, labeled.
#type ResE < Ok(Int), Err(String) >
goodE = ResE(Ok, 42)
badE  = ResE(Err, "boom")

// Matching: bare pipes vs label guards.
r1 = goodR | v => v | s => ?s       // 42  (first slot payload)
r2 = badR  | v => v | s => ?s       // 4   (second slot payload: len "boom")
e1 = goodE [Ok n] n [Err s] ?s | 0      // 42
e2 = badE  [Ok n] n [Err s] ?s | 0      // 4

// Polarity machinery works on the ram, not the enum.
#type Unit < Int | >
u10 = Unit(<+ 10 ->)
h1 = u10 $>> (m => Unit(<+ m * 2 ->))    // 20 (bind, then double)
print $ (h1 | v => str::from_int(v) | "none")

// An enum inside a ram's slot, unwrapped then label-matched:
show = e => e [Ok n] str::from_int(n) [Err s] s | "?"
#type Fetch < ResE | Error >
f = Fetch(<+ goodE +>)
print $ (f | e => show(e) | _)           // 42
```

Both produce the same `{ tag, payload }`; the ram adds polarity operators, the
enum adds names. Pick by whether you want to *reason about order* or *read
the labels*.

---

See also: `process/spec/ramifications.md` (ram spec, §13 comparison),
`process/spec/enums.md` (enum spec, §7 comparison), `AGENTS.md` HARD RULES
(ramification positional-only invariant).
