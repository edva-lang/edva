# Control Flow & Cycle Operators

Dva has **no control-flow keywords** (`break`, `continue`, `return`, `for`,
`while`, `if`, `else` do not exist as keywords; they are ordinary identifiers).
Control flow is expressed entirely through symbolic operators.

This specification documents the cycle control flow operators (`-->`, `>--`,
`--^`) and the ramification propagation operator (`--!`).

---

## 1. Cycle Operators Overview

Cycle iteration is introduced with `@` (`Iterable @ FnExpr`) or `@@`
(`String @@ FnExpr` for codepoint traversal). Control flow within and out of
cycles is governed by three operators:

| Operator | Role | Syntax | Target |
|---|---|---|---|
| `-->` | Break | `-->` or `-->N` | Innermost (or Nth) cycle |
| `--^` | Continue | `--^` or `--^N` | Innermost (or Nth) cycle |
| `>--` | Escape | `Cycle >-- Branch` | The preceding cycle |

### 1.1 Iteration Kinds (`@` and `@@`)

The `@` cycle binds the first parameter of its body function to elements
(or loop counter), and an optional second parameter to the 0-based iteration
index:

- **Integer trip-count / Range**: `10 @ i =>` (0..9) or `1..5 @ i =>` (1..4).
- **Rune-typed Range**: `'a'..'e' @ r =>` iterates Runes `'a'`, `'b'`, `'c'`,
  and `'d'`.
- **Fixed Records / Tuples**: `(10, 20, 30) @ x =>` or `(10, 20, 30) @ x, i =>`.
- **Dynamic Slices**: `sl @ elem =>` or `sl @ elem, i =>`.
- **Growable Arrays (Issue #27)**: `arr @ elem =>` or `arr @ elem, i =>`.
- **Maps**: `m @ val, key =>` (iterates key-value entries).
- **String Bytes**: `s @ b =>` iterates raw byte values (`b: Int`).

### 1.2 Codepoint String Iteration (`@@`) (Issue #24)

The `@@` operator iterates Unicode codepoints across UTF-8 strings directly:
```dva
"hello 🤔 world" @@ r =>
   print $ "" + r
```
- Binds `r: Rune` for each decoded UTF-8 codepoint (1 to 4 bytes).
- Optional second parameter binds the 0-based codepoint index: `s @@ r, i =>`.
- Eliminates manual byte-offset tracking and decoding loops.

---

## 2. `-->` — Cycle Break

The `-->` operator terminates execution of the innermost enclosing `@` cycle
immediately.

### Syntax
- `-->`: breaks the immediately enclosing cycle (depth 1).
- `-->N`: where `N` is a positive integer literal (e.g. `-->2`, `-->3`),
  breaks out of `N` levels of nested cycles. A depth of 0 or negative is a
  compile-time error (`E2066`).

### Semantics
- When `-->` executes, remaining statements in the current iteration and all
  subsequent iterations of the target cycle are skipped.
- If the targeted cycle is wrapped in a `>--` escape branch, control transfers
  directly to the `>--` branch.
- If no `>--` escape branch is attached, the cycle produces no value
  (`.Unassignable` / `()`).

Example:
```dva
10 @ i =>
   i == 5
      | -->
   print_int $ i
```

---

## 3. `--^` — Cycle Continue

The `--^` operator skips the remainder of the current iteration and advances
the cycle to the next element or counter value.

### Syntax
- `--^`: continues the immediately enclosing cycle (depth 1).
- `--^N`: continues the `N`th enclosing cycle.

### Semantics
- Any code following `--^` in the current iteration is skipped.
- The iteration index advances, and the next element of the iterable is
  evaluated.
- `--^` **never triggers** a `>--` escape branch; escape branches are only
  invoked by `-->`.

Example:
```dva
10 @ i =>
   i % 2 == 0
      | --^
   print_int $ i  // prints odd numbers only
```

---

## 4. `>--` — Cycle Escape Branch

The `>--` operator turns a cycle from a pure statement into a **value-producing
expression** (cycle-escape).

> [!NOTE]
> `>--` replaces the earlier `--:` operator syntax across the language.

### Syntax
```
CycleExpr ::= Iterable "@" FnExpr [ ">--" BranchBody ]
            | Iterable "@" Expr   [ ">--" BranchBody ]
            | Iterable "@" Block  [ ">--" BranchBody ]
```
The branch body may appear inline on the same line or as an indented block.

### Semantics
1. **Break with escape**: If a `-->` targeting this cycle fires during
   execution, iteration ceases and `BranchBody` is evaluated. The value
   produced by `BranchBody` becomes the result of the entire cycle expression.
2. **Normal completion**: If the cycle completes all iterations without
   breaking, `BranchBody` is skipped, and the expression evaluates to the
   **zero value** of the branch body's static type (e.g. `0` for integer,
   `""` for String, `null` / empty for composite/pointer types).
3. **Multi-level escape**: When breaking out of nested cycles with `-->N`, the
   escape branch of the `N`th enclosing cycle is the one that executes.

Example:
```dva
// Searches for an item; returns its index if found, or -1 if absent.
found = xs @ x, i =>
   x == target | -->
>--
   i

// Inline form
res = 5 @ i => i [3] --> | 0 >-- 99
```

---

## 5. `--!` — Postfix Ramification Propagate

The `--!` operator provides concise monadic error/unit propagation out of
enclosing functions, similar to Rust's `?` or Go's `if err != nil`.

> [!IMPORTANT]
> The historical synonym `!?` has been **disabled** and is rejected by the
> compiler. Only `--!` is accepted.

### Syntax
```
Expr ::= PrimaryExpr "--!"
```

### Constraints & Semantics
1. **Operand Requirements**:
   - The operand must evaluate to a ramification with a **positive payload**:
     either `RamPP <A | B>` or `RamPN <A | >`.
   - Applying `--!` to `RamNN` (`Flag`), `RamNP <| B>`, or non-ram types emits
     a compile-time error (`E241` / `E242`).
2. **Success Path (Positive)**:
   - If the ramification contains the positive variant (e.g. `Some(a)` or
     `Left(a)`), the payload value `a` is unwrapped and becomes the value of the
     `--!` expression inline.
3. **Failure Path (Negative)**:
   - If the ramification contains the negative variant (e.g. `None` / `<-->` or
     `Err(b)`), the enclosing function **immediately returns** the negative
     ramification value.
   - The enclosing function's declared return type must be a ramification shape
     compatible with the propagated negative variant.

Example:
```dva
step_a: Int => < Int | String >
step_a = x => x < 0 | <- "negative" -> | <+ x * 2 +>

step_b: Int => < Int | String >
step_b = x => x == 0 | <- "zero" -> | <+ 100 / x +>

pipeline: Int, Int => < Int | String >
pipeline = a, b =>
   // If step_a or step_b fails, the error early-returns from pipeline:
   res = step_a(a)--! + step_b(b)--!
   <+ res +>
```
