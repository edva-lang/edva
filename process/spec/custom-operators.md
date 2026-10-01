# Custom binary operators — the full spec

**Status:** native parser implemented; selfhost mirror pending. Source of truth
for the *existing* operators: `process/spec/operators.yaml` →
`src/operators_gen.odin` (the static `PRECEDENCE_TABLE`). This document
extends that with **user-defined** operators, modeled on Haskell: an operator
symbol **is** a function name — `+++ = a, b => …` defines the function `+++`,
and a `#infix` clause in its annotation gives it infix syntax. There is no
mapping to a separately-named function; the operator is the function.

---

## 1. The model — operator symbols are function names

Haskell's rule, transplanted — but with the fixity folded into the **function's
forward annotation** (its registration point), not a separate directive:

```dva
+++ : #infix 40 45, Int, Int => Int   // one annotation: fixity + type
+++ = a, b => a * b + a               // body — identical to a regular function

<~> : #infix 45 40                    // fixity only; params inferred from first use
<~> = a, b => a < b | a | b

c = 3 +++ 4 <~> 2                     // sugar for <~>(+++(3, 4), 2)
```

Everything an operator means is its function. Three spellings are equivalent:

| spelling | meaning |
|---|---|
| `a +++ b` (infix) | `+++(a, b)` — requires the fixity clause in the annotation |
| `+++(a, b)` (prefix call) | the same call — works without any fixity clause |
| `(+++)` (parenthesized) | the function **value** — usable as a higher-order arg |

A definition without a fixity clause gives a callable function (`+++(a, b)`
and `(+++)`); the infix form needs the `#infix` clause.

## 2. What counts as an operator symbol

The lexer already munches **every maximal run of special characters** into one
`.Op` token (`src/lexer.odin` `lexer_is_special_char`): any char that is not
whitespace, a digit/letter/`_`, a quote (`"` `'`), `#`, or a delimiter
(`( ) [ ] { } , ;`). The alphabet therefore includes `! @ $ % ^ & * - + = ~ |
/ \ < > ? : .` (and `#` is **not** an operator char — it starts directives).

An operator symbol is such an `.Op` run, **except** the reserved texts (§6).
`+++`, `<<<`, `<=>`, `?+`, `<~>`, `~=`, `**` are all distinct, already-lexed
tokens.

## 3. Defining an operator

An operator definition is an ordinary function definition whose **name is the
operator symbol**, written **naked** (no parentheses):

```dva
+++ = a, b => a * b + a
```

**Why naked, not `(+++)`.** The parentheses Haskell puts around an operator
exist because Haskell's application is juxtaposition (`f x y`), so a bare
symbol cannot be told apart from a call. Dva has no juxtaposition — its
name-positions are `name : …` (annotation) and `name = …` (definition), so a
symbol needs no disambiguation aid there. The parenthesized spelling is
reserved for the one place ceremony is genuinely due: the **value** form
`(+++)`, where a bare `+++` in operand position would mean the infix operator.

The parser needs only one new rule to make this work — **a non-reserved `.Op`
token at primary position is an operator-name atom** (a value reference) —
placed *after* every existing dispatch (the `-`/`!`/`*`/`?` unaries, the
`<+>`/`<->` ram literals, the `-->`/`--^` cycle jumps, the operator sections),
so it can only ever fire for genuinely-new symbols. Everything else falls out
of that atom: `+++` bare is a value, `+++(a, b)` is a call, `+++ : …` is an
annotation, `+++ = …` is a definition, and `a +++ b` is infix.

The parser accepts an `.Op` token as an assignment target when it is
immediately followed by `=`/`:=` (a name position), and registers the function
under the symbol text. The same Op-as-name support covers a forward signature
(`+++ : Int, Int => Int`). Like any function it can be:

- called prefix: `+++(3, 4)`
- taken as a value: `(+++)`, or passed to a higher-order function
- given a signature: `+++ : Int, Int => Int` then `+++ = a, b => …`
- generic: `+++ : #! T: Type, T, T => T` … (compile-time params)

## 4. Declaring infix syntax — the fixity clause

Fixity lives in the **forward annotation** (the same annotation that carries
the type), as a leading `#infix` clause that names **both** binding powers —
the left (`lhs_bp`) and the right (`rhs_bp`) the Pratt loop uses:

```
name : #infix <lbp> <rbp>[, types => ret]     // explicit both weights
```

- `<lbp>` and `<rbp>` are integers in the tower's binding-power scale (§4.1).
  They are the actual `lhs_bp` / `rhs_bp` the Pratt loop uses, and
  associativity falls out of them: **`rbp > lbp` is left-associative** (the
  right operand is parsed tighter, so it cannot absorb an equal-precedence
  operator — the chain groups left), **`rbp < lbp` is right-associative**,
  `rbp == lbp` is non-associative. Both weights are always written explicitly
  — there is no sugar.
- The fixity clause is optional; **without it the operator is still a
  callable function** (`+++(a, b)`, `(+++)`), just not infix-usable.
- The type part after the comma is optional too: `+++ : #infix 25 20`
  declares fixity alone and the params are inferred from the first use; the
  two clauses may appear together or separately.
- The annotation is **module-level**, like any function signature. Declaring
  the same symbol's fixity twice is an error.

### 4.1 Precedence placement

The static tower's binding powers are `tier-number * 10` (`10 … 170`; see
`src/operators_gen.odin`). A user operator's `#infix <lbp> <rbp>` weights are
plain integers in that same scale; they slot *between* the built-in tiers
(tiers never share a weight, so a custom op picks an off-tier integer):

| `#infix lbp rbp` | sits between | assoc |
|---|---|---|
| `#infix 10 15` | cycle (10) and sequence (20) | left |
| `#infix 40 45` | feed (40) and choice (50) | left |
| `#infix 45 40` | feed (40) and choice (50) | right |
| `#infix 50 50` | choice (50) and assignment (60) | non |
| `#infix 90 95` | `&&` (90) and `. \|.` (100) | left |

The explicit form places operators anywhere: `#infix 135 145` binds looser
than multiplication (150) but tighter than addition (140), left-assoc
(`rbp 145 > lbp 135`).

Consequences:

- User operators always bind **looser than comparison** (`==`, `<`, …) and all
  arithmetic (`+`, `*`, …) — `a + b <op> c` is `(a + b) <op> c` and
  `a <op> b + c` is `a <op> (b + c)` (the tighter built-in groups its side
  first, the looser custom op then combines with the result). An operator that
  must bind *tighter* than `*` picks a weight above 150.
- Mixing with the feed/apply tiers (`$`, `$>`) follows the same
  precedence-climbing rules as every binary operator (§5.3).

### 4.2 Associativity

Left-assoc, right-assoc, and non-assoc are exactly the Haskell semantics:
`a - b - c` groups `(a - b) - c`, `a ^ b ^ c` groups `a ^ (b ^ c)`, and a
non-assoc operator between two of itself is a parse error.

## 5. Using an operator

### 5.1 Infix — the general case

`a <op> b` parses exactly like any binary operator at the declared binding
power, and desugars to the call `Call(<op>, [a, b])`. The call path (arity,
signature typing, generic instantiation) is unchanged — there is **no new
codegen**.

### 5.2 Prefix call and function value

- `+++(a, b)` — the symbol in **primary position** followed by `(` is a call.
- `(+++)` — the symbol parenthesized is the function value (like Haskell).
- `apply(+++, 3, 4)` — the symbol in an argument / operand position (not
  followed by `(`) is a function value.

Disambiguation rule: in **primary position** a non-reserved operator symbol is
an operator-name atom (a value); followed by `(` it becomes a call. In
**operand position** (immediately after a complete expression) it is the infix
binary operator (only for symbols with a fixity annotation) or an error.

### 5.3 Precedence climbing

`parser_parse_expr_bp` (`src/parser.odin`) first consults the static table
(`binary_tier_of_op`); when the text is not a built-in, it consults the
file's operator annotations. An annotated symbol yields a tier entry with the
user's binding power and associativity, and the loop proceeds identically —
the `lhs_bp`/`min_bp` recursion and the choice-absorption rule below the
choice tier apply unchanged.

## 6. Reserved texts — what cannot be redefined

An operator-symbol annotation (fixity clause or function name) is rejected
when the text already has a meaning:

- **built-in binary operators** (the `operators.yaml` set: `+ - * / % == != <
  > !< !> && || .&. .|. .<. .>. $ $> $>> .. @ ; ^ ^?`),
- **the special tokens**: `--> --^ >--` (cycle), `<+> <-> <++> <-->` (ram
  literals), `<- +>` (ram payload constructors), `!|` (write-or-panic),
  `=` `:=` `+=` `::=` (assignment), `::` `:` (module/global/type), `?` `!` `*`
  `.` (the whitespace-sensitive unary/member operators), `|` (choice
  separator),
  `++` (copy), `=>` `!=>` (lambda), `.!.` (bitwise NOT), `->` (ram payload
  close),
- **delimiters** (already impossible — they don't lex as `.Op`).

A symbol like `+++`, `<=>`, `<~>`, `?+` is free. The check is `E-coded` and
fires at the annotation (or the definition), so `+ : #infix 40 45, ...` is a
compile error, not a silent shadow.

### 6.1 Raw-string caveat

The raw-string syntax `(= … =)` takes precedence at the **lexer** level: any
`(` immediately followed by `=` opens a raw string, so a custom operator whose
text **begins with `=`** cannot be written in parentheses (`(===)` lexes as the
raw string `"="`), and any text containing `=)` closes it. The operator still
works bare and infix (`a === b`), only the parenthesized value form `(===)` is
unavailable. The monadic-predicate family (`.!=`, `>.`, `.<`, …) and most
symbols are unaffected — this only constrains `=`-initial texts.

## 7. Scoping

- The fixity annotation is **file/module-scoped**: visible from the point of
  declaration to the end of the file, and to `#use`rs only if exported (a
  future extension; v1 keeps operators private to the declaring module).
- The operator **function** is an ordinary module binding: it can be
  `#private`, has a normal signature, and resolves like any function name
  (including through `mod::` when the module exports it — see §9 for the
  cross-module symbol caveat).

## 8. Type checking

The fixity clause contributes **nothing to the type** — the operator's type is
the function's type, established exactly as for any dva function, by one of
three mechanisms:

1. **A declared signature** (the type part of the annotation):
   ```dva
   +++ : #infix 40 45, Int, Int => Int   // fixity + type in one annotation
   +++ = a, b => a * b + a            // body typed from the signature
   ```
   This is the way to make the operator usable as a **value** (`(+++)`,
   `apply(+++, 3, 4)`) and to fix mixed/specific operand types.

2. **Call-site inference** (fixity only, no type): the first infix or prefix
   use types the params, like any untyped function:
   ```dva
   +++ : #infix 40 45
   +++ = a, b => a * b + a
   c = 3 +++ 4                  // a, b inferred Int; body typed Int
   ```
   This is the "no Int-defaulting" rule applied to operators: the params are
   never defaulted; the first call establishes them.

3. **Compile-time generics** (a `#!` signature): a polymorphic operator,
   instantiated per use:
   ```dva
   +++ : #infix 60 65, #! T: Type, T, T => T
   +++ = a, b => a * b + a
   c = 3 +++ 4                  // T = Int
   s = "x" +++ "y"              // T = String (monomorphized)
   ```

`a <op> b` desugars to the call `<op>(a, b)`, so **all** existing call typing
applies unchanged: arity (`E3092`), operand/signature mismatch (`E3094`), the
return type, and generic instantiation. There is no operator-specific typing.

**Edge case — the value form needs a known type.** `(+++)` read as a value
(not called) before any infix/prefix use and without a declared signature is
`E3128` ("read as a value before any call and without a signature"), exactly
the existing rule for function names. To pass an operator around, declare its
type (§8.1) or give it a call site first.

**The signature's LHS is the symbol.** `+++ : #infix 40 45, Int, Int => Int`
requires the Op-as-name support in the forward-annotation path (the same
support the definition's LHS uses).

## 9. Limitations & open questions

- **Cross-module operator references.** `mod::+++` does not lex: `::+++` is a
  single `.Op` run. v1 restricts operators to their declaring module; a
  future `#export`/import mechanism for symbols is out of scope.
- **No sections for custom operators (v1).** `+++ x` (a prefix "section") is
  ambiguous with the prefix-call/value reading and is not supported; write
  `_ => _ +++ x` or use `(+++)` + a lambda. (The built-in sections are
  unchanged.)
- **No sugar for common fixities.** Both weights are always written
  explicitly; an operator tighter than `*` just writes a weight above 150
  (`#infix 155 145`). No `infixl`/`infixr` convenience forms exist.
- **Operator as a record/map member** (`r.+++`)? Not supported; the dot-member
  path expects identifiers.
- **Unicode operator chars** lex as special and are permitted, but mixed
  scripts in one symbol are the user's aesthetic choice.
- **Interaction with `!|` / choice-absorption** at the sub-choice tiers: a
  user operator at level 0–4 (binding power below the choice tier, 50) has its
  RHS absorb a following choice, exactly like a built-in at that tier:
  `x <op> y | a | b` parses as `x <op> (y | a | b)`. Level 5+ (above the
  choice tier) does not absorb: `(x <op> y) | a | b`. Verified against the
  existing rule in §5.3.

## 10. Implementation sketch

**Status: native parser and selfhost parser.dva both implemented.**

- **Parser (native `src/parser.odin` + selfhost `selfhost/parser.dva`, in
  lockstep for the differential harness):**
  - a `p.user_ops: map[string]UserOp{lbp, rbp}` on the Parser (the two binding
    powers from the `#infix <lbp> <rbp>` clause);
  - parse the `#infix` clause inside the forward
    annotation (the `name : …` path), validating reserved texts;
  - accept an `.Op` token as an assignment target, an annotation target, and
    as a primary (value / call / parenthesized value);
  - in `parser_parse_expr_bp`, fall back to `p.user_ops` when
    `binary_tier_of_op` fails, and build a `Call` node for the operator.
- **Codegen:** none (the operator is an ordinary function call).
- **Generator:** the static `operators.yaml` table is unchanged; user ops are
  a per-file dynamic extension (a documented exception to the single-source
  rule).
- **Grammar:** extend `GRAMMAR.md` §2.8 (operator-symbol function names) and
  add the fixity clause to the annotation grammar.
- **Tests:** operator definition/call/value, precedence vs `+`/`==`/`$`,
  associativity (left/right), reserved-text rejection — `tests/pass/201`, 
  `tests/fail/101`; selfhost-differential parity on the parse trees.

## 11. Why this shape

The lexer already produces a single `.Op` for any operator run — the usual
hard part of custom operators is free. Making the operator **be** the function
(not a mapping) keeps the type system, higher-order use, and codegen zero-cost:
`a +++ b` is just `+++(a, b)`, and `+++` is just a function named `+++`. The
fixity clause is the only new syntax, and it lives in the function's own
forward annotation — the place the parser already learns the operator's name
and type — so an operator reads as a regular typed function with one extra
clause, the same split Haskell draws between `(+++) = …` and `infixl 5 +++`
but without a second, separate declaration.