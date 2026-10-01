# Maps — the full spec

**Status:** authoritative reference. Source of truth: `src/` (the compiler), the
HARD RULES in `AGENTS.md`, and `archive/map_type_spec.md`; this document
assembles all of it with options and examples.

A **map** (`ValueType.Map`) is dva's keyed container: an open-addressing hash
table from a small set of key types (`String | Int | Address`) to any storable
value. It is the language's symbol-table machinery — the compiler itself uses
maps at dozens of sites in `src/` — and the *named* counterpart to the
growable array's positional `a(i)`.

```dva
#type Env String ^ String        // name a map type (right-assoc K ^ V)
e := Env                         // a fresh empty map
e ^ "name" = "dva"               // insert
e ^ "name"                       // lookup -> < value | Error > (RamPP)
e ^? "name"                      // membership -> Flag (RamNN)
e ^- "name"                      // delete -> Flag (was it present?)
?e                               // entry count
m := ("a" ^= 1, "b" ^= 2)        // map literal (types inferred from the pairs)
m @ v, k => print $ k            // iterate: value, then key
```

---

## 1. Declaring a map type

The map type is written `K ^ V` — the key type, `^`, the value type,
**right-associative** (`A ^ B ^ C` is `A ^ (B ^ C)`).

```dva
#type Env String ^ String        // a named map type (the canonical form)
#type Index Int ^ String
m: String ^ Int                  // an anonymous map type in an annotation
f: Env => Int                    // maps flow through signatures like any type
```

- **Keys** are `String | Int | Address`. Anything else is `E2090`
  ("Map key type must be String, Int, or Address, got …"). String keys are
  stored by pointer (the fat `{len, data}` string), not inline.
- **Values** may be any storable type — a scalar, a String, a record, a slice,
  a growable array, a heap ram/enum, a map, a function value.
- A `#type` name is required to *materialize an empty map value* (§7.1). In
  an annotation the type is enough and the map materializes lazily on the first
  insert (§4).

---

## 2. Operations

| operation | syntax | result | notes |
|---|---|---|---|
| insert / rebind | `e ^ k = v` | — | infallible; lazy-materializes `e` if uninitialized |
| lookup | `e ^ k` | `< value \| Error >` (RamPP) | the Error slot carries the failed lookup |
| membership | `e ^? k` | `<>` Flag (RamNN) | probe without producing a value |
| delete | `e ^- k` | `<>` Flag (RamNN) | true when the key was present |
| count | `?e` | `Int` | entry count |
| literal | `(k1 ^= v1, k2 ^= v2)` | `Map` value | key/value types inferred from the pairs |
| iterate | `m @ v, k => …` | — | visits live entries (value first, key second) |

```dva
e := Env
e ^ "name" = "dva"               // insert
e ^ "name" = "odin"              // rebind the same key (overwrites)
n := e ^ "name" | v => v | "?"   // lookup, unwrap: the positive slot or Error
h := e ^? "name"                 // membership: a bare Flag
c := ?e                          // count
```

### 2.1 Lookup is a fallible ram

`e ^ k` returns a heap **RamPP** `< value | Error >` — the positive slot holds
the value when the key exists, the negative slot an `Error` when it does not.
Unwrap it with a choice, exactly like an array read:

```dva
v := e ^ "name" | val => val | "missing"
```

The `| _` identity extractor works too (`e ^ "name" | _ | "missing"`), and a
write-or-panic uses the `!|` sugar:

```dva
w := e ^ "name" !| _             // unwrap the value, abort on a missing key
```

### 2.2 Membership is a bare Flag

`e ^? k` returns a bare `<>` — no value, no Error — the cheap probe:

```dva
e ^? "name" | "present" | "absent"
```

### 2.3 Insert is infallible and rebinding

`e ^ k = v` inserts `v` at `k` or overwrites an existing entry; it never
fails. It is the one operation that **lazy-materializes** an uninitialized
map: a variable annotated `x: String ^ Int` (or a named type declared without
an assignment) becomes a real map at its first insert (§4).

### 2.4 Delete is a bare Flag

`e ^- k` removes the entry and returns a `<>` Flag — true when the key was
present (deleted), false when it was absent:

```dva
d := e ^- "name"                 // true if "name" was present
d2 := e ^- "name"                // false — already gone
```

Deletion marks the slot a **tombstone**: lookups and membership probe past
tombstones without matching the stale key, a re-insert of the same key revives
its own slot, and growth rehashes only live entries. So delete never corrupts
probe chains, and `?e` reflects the live count.

---

## 3. Representation

A map value is a pointer to a five-field heap struct:

```
{ count: i64, cap: i64, keys: ptr, vals: ptr, states: ptr }
```

- **Open addressing** with linear probing; the load factor is 0.75 — when
  `count` reaches `0.75 × cap`, the table doubles and every entry is rehashed.
- `keys` and `vals` are parallel arrays of `cap` slots each; `states` tracks
  each slot's occupancy (empty / live / tombstoned) so a deleted-entry probe
  chain keeps working.
- String keys are stored as their fat `{len, data}` pointer (no inline copy).
- Hashing: `String` keys hash via the runtime FNV-1a helper
  `dva_hash_string(ptr, len) -> i64`; `Int`/`Address` keys hash their bits.
  The slot index is `hash & (cap - 1)`.
- There is **no RTTI**: the value is the struct pointer; the key/value types
  live in the map's `TypeInfo` (`Map((key_type, value_type, value_record)`),
  compile-time only.

---

## 4. Lazy materialization

A map variable does not need an explicit initializer when its type is known:

```dva
x: String ^ Int          // typed, but not yet a map — the value is "unset"
x ^ "a" = 1              // the first insert MATERIALIZES the map
x ^ "a"                  // -> < 1 | Error > — now it's a real map
```

The named form is the same: `e := Env` eagerly builds an empty map, but a
forward-annotated `e: Env` (with no `=`) materializes on first insert. This is
what makes a symbol table "just work": declare the type, insert, and the map
appears.

---

## 5. Map literals

A parenthesized list of `key ^= value` entries builds a map **value** in one
expression, with its types **inferred from the pairs**:

```dva
m := ("a" ^= 1, "b" ^= 2, "c" ^= 3)     // String ^ Int — inferred
n := (1 ^= "x", 2 ^= "y")               // Int ^ String
```

- The **first entry decides** the key and value types; the key must be
  `String | Int | Address` (`E2090`).
- Every later entry must match those types — otherwise it is a compile error:
  `E3138` (value type mismatch) or `E3137` (key type mismatch). This is the
  "throw on type mismatch" rule.
- The result is a full `.Map` value: lookup / membership / delete / count /
  iterate all work on it, and it can be re-bound (`m ^ "a" = 99`) in place.
- A literal is how an **anonymous** map (no `#type` name) is created *with*
  entries — the types come from the pairs, not a runtime descriptor. An
  *empty* anonymous map still needs a name (§7.1).

---

## 6. Iteration

A map is a cycle iterable: `m @ v, k => …` visits every **live** entry,
binding the **value** to the first lambda param and the **key** to the second.
The implicit form binds `_` to the value and `_i` to the key.

```dva
m @ v, k =>
   print $ k + "=" + str::from_int(v)

// implicit:
m @ _v, _k => …   // or _ / _i
```

- Entries are visited in **hash order** (open-addressing slot order), *not*
  insertion order — iteration is deterministic for a given insertion sequence
  but unordered.
- Deleted (tombstoned) slots are skipped, so iteration reflects the live
  entries. A `-->` / `--^` break / continue works as in any cycle.

---

## 7. Recorded limitations

One *language-surface* limit remains; the other three are deliberate
constraints on the new features.

### 7.1 No anonymous EMPTY map *value*

`K ^ V` is a **type** only. You cannot write a bare empty-map value:

```dva
e = String ^ String      // ERROR — 'String ^ String' is a type expression
```

A map value needs a declared `#type` name (or a map literal with entries,
§5), exactly like a growable array (`xs = Ints` requires
`#type Ints (Int){}` — you can't write the element type as a value). Three
ways to get a map:

```dva
#type Env String ^ String   // (a) name the type, then e = Env
e = Env

f: String ^ Int             // (b) annotate inline and let the first insert
f ^ "a" = 1                 //     materialize the map (§4)

m := ("a" ^= 1, "b" ^= 2)   // (c) a map literal with entries (§5)
```

Rationale: the codegen materializes a fresh empty map only when it can resolve
the type *by name* (`#type` or `module::Type`). An anonymous `String ^ Int`
written as a value would need a runtime type descriptor to know its key/value
shapes — and there is no RTTI. (A literal avoids this because its *pairs*
carry the shapes.)

### 7.2 Map literal type inference is strict

The literal's key/value types come from its **first** entry and are enforced
for every later one (`E3137`/`E3138`). There is no implicit coercion between
entry types — write homogeneous literals, or build heterogeneous maps with a
named type and explicit inserts.

### 7.3 No `keys()` helper

Iteration (§6) covers the common case, but there is no standalone
`keys()` / `values()` helper that materializes the key or value array as a
value.

### 7.4 No `delete(e, k)` function form

Deletion is the `e ^- k` operator only — there is no `delete(e, k)` call
form. A value can also be "removed" by rebinding it to a sentinel, but the
entry itself stays (and `?e` still counts it).

---

## 8. Maps in the compiler

Maps are the self-hosting language's answer to symbol tables — the Odin
compiler uses them at 76 `map[` sites, and the dva port is expected to do the
same (`#type Env String ^ Int`, `e ^ k = v`, `e ^ k`, `e ^? k`, `?e`). The
design deliberately mirrors the growable array's shape so the two containers
feel identical: declare a named type, mutate with an operator, read with a
fallible index, count with `?`.

---

## 9. Errors

| code | message | when |
|---|---|---|
| `E2090` | "Map key type must be String, Int, or Address, got …" | a non-`String/Int/Address` key type in a map declaration or literal |
| `E3091` | "'^' key access requires a map operand, got …" | `^`/`^?`/`^-` applied to a non-map |
| `E3136` | "A map literal needs at least one 'key ^= value' entry." | `()` with no pairs |
| `E3137` | "Map literal key type mismatch: entry … has key type …, first entry …." | a later literal key's type differs from the first |
| `E3138` | "Map literal value type mismatch: entry … has value type …, first entry …." | a later literal value's type differs from the first |
| `E3052` | "Cycle iteration requires a map, record, slice, string, integer, or range iterable." | `@` iteration on an unsupported iterable |

There is no error for a missing key at *runtime* — a failed lookup is the
negative `Error` slot of the `< value | Error >` ram, handled by the choice
that unwraps it.

---

## 10. Complete worked example

```dva
#use "str"

// The whole API: literal, insert/rebind, lookup, membership, delete, count,
// and iteration.
main = _ =>
   f := ("a" ^= 3, "b" ^= 1)       // literal — String ^ Int inferred
   print $ "count=" + str::from_int(?f)

   a0 := f ^ "a" | _ | 0           // read-modify-write: unwrap first…
   f ^ "a" = a0 + 1                // …then rebind

   a := f ^ "a" | _ | 0            // fallible lookup, unwrap to a variable
   c := f ^ "c" | _ | 0            // missing key -> the Error slot -> 0
   h := f ^? "b"                   // membership (a bare Flag)
   d := f ^- "b"                   // delete (a bare Flag: was it present?)

   out := {32}
   out += "count=" + str::from_int(?f)
   out += " a=" + str::from_int(a)
   out += " c=" + str::from_int(c)
   out += " has-b=" + (h | "y" | "n")
   out += " del-b=" + (d | "y" | "n")
   print $ !out

   f @ v, k =>                     // iterate (value, key); tombstones skipped
      print $ k + "=" + str::from_int(v)
   0

main(0)
```

Note the lookup is unwrapped into a variable first — a call argument does not
absorb the choice continuation, so `str::from_int(f ^ k | _ | 0)` is a parse
error (`E2027`); bind the lookup (`a := f ^ k | _ | 0`) then pass `a`.