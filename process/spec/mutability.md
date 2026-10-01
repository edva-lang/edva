# Mutability & Binding Model

This document specifies Dva's binding mutability model, rebindable
variable identifiers, and the decoupling of binding mutability from
interior mutability (Issue #76).

## 1. Prime-Suffixed Rebindable Variables

Dva encodes rebindable mutability directly into identifiers via one or
more trailing prime (`'`) characters, rather than via declaration keywords
or assignment operators:

```dva
// Immutable binding (default)
x = 10
x = 20         // Compile error: E3033 (cannot re-assign immutable binding)

// Rebindable mutable binding (primed identifier)
x' = 10
x' = 20        // OK: re-assignment to primed variable

// Multiple primes are admitted for successive rebinding stages
y'' = 40
y'' = y'' + 2   // OK
```

### 1.1 Lexer Rules

The lexer admits `'` as a trailing identifier character when preceded by
an alphanumeric or underscore character. A leading single quote continues
to introduce a `Rune` literal (`'c'`).

### 1.2 Retirement of `:=`

All variable declarations and re-assignments uniformly use `=`:
```dva
total' = 0
0..10 @ i => total' = total' + i
```
The legacy walrus operator `:=` is retired in user code. During the
compiler bootstrap transition, `:=` remains accepted for backward
compatibility with existing seed compiler sources.

## 2. Immutable Function Parameters

Function and lambda parameters are always prime-free immutable inputs:
```dva
f = a, b => a + b          // OK
g = x' => x' + 1           // Compile error: E2039
```
Attempting to declare a primed parameter in any function, lambda, or cycle
header (`0.. @ i' => ...`) triggers compile error `E2039`:
`"Function parameters cannot be mutable — remove prime suffix from '<pname>'."`

## 3. Decoupling Binding Mutability from Interior Mutability

Binding mutability governs whether a variable identifier itself can be
re-pointed to a different value. Interior mutability governs mutations
to the contents of a composite structure in memory.

In Dva, binding mutability is decoupled from interior mutability:
- **Interior mutations** do not require a primed binding:
  - Record member writes: `pt = Point(1, 2); pt.x = 10` (valid on `pt`).
  - Growable array appends: `arr: Ints; arr += 100` (valid on `arr`).
  - Builder buffer appends: `b = {32}; b += "foo"` (valid on `b`).
  - Map key writes: `m = ("a" ^= 1); m ^ "b" = 2` (valid on `m`).
- **Whole-value rebinding** requires a primed binding:
  - Re-pointing a record variable: `pt' = Point(1, 2); pt' = Point(3, 4)`
    requires `pt'` to be primed. Re-assigning an unprimed record binding
    `pt = Point(3, 4)` is rejected with `E3033`.

## 4. Diagnostics

- `E3033`: `"Cannot re-assign immutable binding '<name>'.`
  `Use a prime suffix ('<name>'') for rebindable variables."`
- `E2039`: `"Function parameters cannot be mutable — remove prime suffix`
  `from '<name>'."`
- `E2001`: `"Cannot make a mutable binding of a string literal; assign a`
  `copy with '++'."` (Triggered on primed string bindings `s' = "literal"`,
  requiring `s' = ++"literal"`).
