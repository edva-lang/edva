# The Choice Operator — the full spec

**Status:** authoritative reference.
Source of truth: `selfhost/` (the compiler), the HARD RULES in `AGENTS.md`,
`process/choice-matchfn.md`, and `GRAMMAR.md` §1.6 + §2.12; this
document defines syntax, grammar, guard normalization, exhaustiveness rules,
typing, and execution semantics of choice in Dva.

---

## 1. Overview and Core Model

Dva has **no control-flow or branching keywords**: `if`, `else`, `switch`,
`case`, `match`, and `when` do not exist. All conditional branching, pattern
matching, and value selection are expressed uniformly using the **choice
operator** (`|`, `[...]`, `!|`).

Conceptually and internally, a choice expression is a **scrutinee applied to a
match-function**:

```
x [g1] b1 [g2] b2 | b3   ≡   apply( MatchFn{
                                pairs:    [ (guard(g1), b1), (guard(g2), b2) ],
                                fallback: b3,
                             }, arg = x )
```

1. **Scrutinee (`x`)**: Evaluated exactly once at the entry point of the
   choice. If the scrutinee expression is omitted before the first branch,
   the compiler inserts an implicit `_` (matching the active context).
2. **Guards (`[g]`)**: Normalized specifications evaluated against the
   scrutinee in textual order.
3. **Actions (`b`)**: Branch bodies evaluated in the enclosing lexical scope
   only when the corresponding guard matches.
4. **Fallback (`| b3`)**: An optional trailing bare branch executed if no
   preceding guard matches.

---

## 2. Syntax and Anatomy

### 2.1 Branch Chaining and the Pipe Rule

Guarded branches chain **adjacently** without a pipe operator between them:

```dva
// CORRECT: adjacent chaining
x [1] "one" [2] "two" [3] "three" | "other"

// ERROR: '|' before a guard triggers E2096
x [1] "one" | [2] "two" | "other"
```

A bare `|` token introduces an unguarded branch. The pipe rule strictly
restricts where bare `|` may appear:
- **First position**: Allowed as a condition or polarity test
  (e.g. `cond | a | b` or `ram | on_positive | on_negative`).
- **Last position**: Allowed as the catch-all / fallback default (`| fallback`).
- **Middle position**: **Forbidden**. Using a bare `|` in any non-first,
  non-last position triggers compile error `E2024` ("Bare '|' is only allowed
  as the first branch or the trailing fallback in a choice chain").

### 2.2 Inline vs Indented Block Syntax

Branches may be written inline or formatted as indented blocks. An indented
block is equivalent to semicolon-separated statements:

```dva
// Inline style
val := cond | "yes" | "no"

// Block style
val := status
   [Status::Success]
      log("operation succeeded")
      1
   [Status::Pending]
      log("still running")
      0
   |
      log("operation failed")
      -1
```

### 2.3 `!|` Sugar for Error Unwrapping and Fallible Writes

The `!|` token is syntactic sugar for `| (void) |`: it skips the first
(positive / success) slot and routes to the second (negative / error) slot:

```
X !| Y   ≡   X | (void) | Y
```

This is primarily used for **write-or-panic** on fallible operations returning
`RamNP < | Error >`:

```dva
// a(i) = v returns < | Error >
// If write succeeds, void first slot matches and yields nothing
// If write fails, the Error payload unwraps and aborts with diagnostic
a(i) = v !| _
```

Because an indexed write's RHS parses at the addition tier, the `!|` choice
naturally binds and wraps the entire write statement.

### 2.4 `!!` Postfix Unwrap Operator

The `!!` postfix operator (Tier 16) is syntactic sugar for `expr | _ | _`.
It unwraps the positive payload of a ramification (`RamPP` or `RamPN`).
If the ramification contains a negative slot or an `Error`, it aborts execution
with a diagnostic:

```dva
x := arr(i)!!           // unwraps positive element or aborts on out-of-bounds
name := users(0)!!.name // chains directly with field access
val := matrix(0)!!(1)!! // chains across multi-dimensional indexing
res := arr(0)!! $> fun  // pipeline flow
```

---

## 3. Guard Normalization (`GuardKind`)

Every choice branch normalizes into exactly one of four distinct guard shapes:

| Kind | Syntax | Codegen Test | Role |
|---|---|---|---|
| `Case` | `[val]`, `[v1, v2]` | Equality / Pred | Value compare / fn call |
| `Predicate` | `[fn]`, `[x => ...]` | Fn call | Applies predicate fn |
| `Variant` | `[Tag]`, `[Tag v]` | Tag equality | Tag match & payload bind |
| `Bare` | `\| action` | Polarity / Bool | Positive/true or fallback |

### 3.1 Case Guards (`GuardKind.Case`)

A value case compares the scrutinee directly against one or more values:

```dva
x
   [0] "zero"
   [1, 2, 3] "small"
   | "large"
```

- **Comma OR-List**: A guard `[1, 2, 3]` matches if the scrutinee equals `1`,
  `2`, OR `3` (equivalent to chained adjacent branches `[1] [2] [3]`).
- **No `[== val]`**: Explicit `[== val]` comparison syntax is an anti-pattern
  and code smell; write `[val]` directly.
- **Identifier Disambiguation**: When an identifier appears in a case guard,
  the compiler checks if it resolves to a predicate function (`T => Flag`). If
  so, it is treated as a predicate reference; otherwise, it is compared for
  equality as a value.

### 3.2 Predicate Guards (`GuardKind.Predicate`)

A predicate guard supplies an explicit function, lambda, or operator section:

```dva
x
   [< 0] "negative"
   [> 0] "positive"
   | "zero"

n [is_even] "even" | "odd"
```

- Commas inside a predicate guard (e.g. `[< 0, 5]`) are a syntax error.
- Operator sections (such as `[< 0]`, `[> 100]`) desugar to unary predicates.

### 3.3 Variant Guards (`GuardKind.Variant`)

Used for pattern matching on tagged `Enum` types:

```dva
#type Shape < Circle(Float), Rect(Float, Float), Point >

s: Shape
s
   [Circle r] 3.14159 * r * r
   [Rect w, h] w * h
   [Point] 0.0
```

- **Payload Binding**: Variables declared after the tag name (e.g. `r`, `w, h`)
  are bound in the branch body to the unwrapped payload values.
- **Multi-Variant Matches**: Multi-variant labels `[Circle, Point]` match any
  of the specified variant tags (payload binding is not allowed here).

### 3.4 Bare Branches (`GuardKind.Bare`)

A bare branch is introduced by `|` with no bracketed guard:
- **First Branch**: Evaluates the truthiness of a boolean flag or the positive
  slot of a ramification.
- **Trailing Branch**: Acts as the universal fallback catch-all default.

### 3.5 Deep Pattern Destructuring

Guards support arbitrary nested pattern matching over composite types:
- **Nested Variants**: Variant patterns can match payloads recursively, such
  as `[Add (Lit a, Lit b)]` or `[Neg (Lit n)]`.
- **Record Destructuring**: Match and bind record fields with field labels
  and literals or sub-patterns: `[(x = 0, y = 0)]`, `[(x = a, y = b)]`.
- **Wildcards (`_`)**: Match and discard any sub-pattern: `[Mul (_, Lit 0)]`
  or `[(x = 0, y = _)]`.
- **Literals in Patterns**: Compare nested constants directly inline:
  `[Mul (Lit 0, _)]`.
- **Compiler Optimization**: Adjacent branches matching the same variant tag
  are consolidated by the compiler into a single tag switch dispatch.

### 3.6 Compile-Time Type Guards and Type Predicates

Choices on compile-time `Type` values (`T [Type1] ...`) perform static type
dispatch:
- **Branch Pruning**: Untaken branches are pruned during semantic analysis;
  their bodies are never codegen'd, allowing type-specific operations without
  type errors on incompatible branches.
- **Type Predicates (`type::is_*`)**: Guards can test type shapes and
  capabilities via standard library comptime predicates:
  ```dva
  classify = #! T: Type, val =>
     T
        [Int, String] "primitive"
        [type::is_record] "record"
        [type::is_enum] "enum"
        [type::is_ram] "ram"
        | "other"
  ```

---

## 4. Dispatch Targets and Semantics

### 4.1 Boolean & Flag Conditions

When the condition is a boolean expression or `Flag` (`<>`), a two-branch
choice acts as an inline conditional:

```dva
msg := is_valid | "OK" | "Invalid"
```

If the false branch is omitted in a statement context, it executes
conditionally for side effects:

```dva
count > 10 | log("threshold exceeded")
```

### 4.2 Ramifications: Strictly Positional Matching

Ramifications (`<>`, `< A | >`, `< | B >`, `< A | B >`) have **no slot names**.
They are matched **strictly by position**:

- The **first branch** matches the **positive (left) slot**.
- The **second branch** matches the **negative (right) slot**.

```dva
res: < String | Error >
res
   | ok_str => io::out(ok_str)
   | err => io::err(err.msg)
```

> [!IMPORTANT]
> Ramification slots cannot be named. Compiler-internal labels (`Positive`,
> `Negative`, `Succ`, `Noth`) are not keywords and cannot appear in source
> code. Attempting to match a ram with a variant guard (e.g. `res [Positive x]`)
> triggers compile error `E3125`.

### 4.3 Identity Extraction and Error Unwrapping (`| _`)

The identity extractor `_` binds the payload of a ramification slot directly:

```dva
// If res is positive, yields value; if negative, aborts with Error
val := res | _ | _
```

When applied to a negative slot carrying an `Error` record, binding the error
outside a handled branch triggers an immediate program abort, printing the
error code, message, and source location.

---

## 5. Exhaustiveness and Typing

### 5.1 Single-Branch Choices Are Never Exhaustive

A choice expression with a single branch:

```dva
cond | action
```

is **never exhaustive**. It evaluates strictly as a side-effect statement and
has type `()` (`.Unassignable`). It cannot be assigned to a variable or passed
as a function argument.

### 5.2 No Dummy `| 0` in Statement Choices

> [!CAUTION]
> **Never append dummy `| 0` to statement choices.**
> Choices in statement position or inside side-effect-only functions (`=> ()`)
> must never include dummy fallback branches like `| 0`. Adding `| 0` forces
> the result type of the choice to `Int`, causing type-consistency violations
> and polluting compile-time type inference. Always write clean statement
> choices: `cond | action`.

### 5.3 Expression Choices Must Be Exhaustive

When a choice is used in an **expression position** (assigned to a variable or
returned from a function), it must be exhaustive and produce compatible types:

1. **Enum Coverage**: All declared variants of an enum must be matched.
   Omitting variants without a trailing bare fallback triggers compile error
   `E3102`.
2. **Ramification Coverage**: Both positive and negative slots must be covered.
3. **Type Consistency**: Every branch must evaluate to the same static type.

```dva
// Compile-time error E3102 if variants are missing without a fallback
color_str := c
   [Color::Red] "red"
   [Color::Green] "green"
   [Color::Blue] "blue"
```

---

## 6. Precedence and Interactions

In Dva's 18-tier operator hierarchy (`process/spec/operators.yaml`), choice
operators reside at **Tier 5** (`Choice` tier):

- **Looser than Choice**: Custom control flow, statement joining.
- **Tighter than Choice**:
  - Application tier 3: `$` (infix apply)
  - Application tier 4: `$>` (reverse feed), `$>>` (monadic ramification bind)
  - Addition tier 10: `+`, `-`, indexed write `=`

Because `$` and `$>` sit below the choice tier, their right-hand sides absorb
the choice expression:

```dva
// Parses as: print $ (x [1] "a" | "b")
print $ x [1] "a" | "b"

// Parses as: data $> (mode [1] process_a | process_b)
data $> mode [1] process_a | process_b
```

Inside choice branch bodies, choice absorption is suppressed so nested choices
and statements parse cleanly.

---

## 7. Syntax and Formatting Restrictions

1. **No Parentheses Around Conditions**:
   Expressions following `=`, `:=`, or choice conditions must never be wrapped
   in redundant parentheses:
   ```dva
   // WRONG
   (x > 0) | print $ "positive"

   // CORRECT
   x > 0 | print $ "positive"
   ```
2. **No `[== value]`**:
   Use `[value]` for equality case matching.
3. **Line Length**:
   All choice constructs must respect the project-wide 100-character line limit.
   Break multi-branch choices across multiple indented lines.

---

## 8. Compiler Diagnostic Reference

| Code | Cause | Resolution |
|---|---|---|
| `E2024` | Bare `\|` in middle position | Remove bare `\|` or make guard |
| `E2096` | `\|` before `[` guard | Chain guards adjacently |
| `E3102` | Enum choice misses variants | Cover variants or add fallback |
| `E3125` | Variant guard used on ram | Match ram positionally with `\|` |
| `E3027` | Ordering / comparison on ram | Use positional choice matching |
