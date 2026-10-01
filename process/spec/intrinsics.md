# Compiler Intrinsics — the full spec

**Status:** authoritative reference. Source of truth: `selfhost/src/`
(the compiler), the HARD RULES in `AGENTS.md`, and issue #77.

Compiler intrinsics provide direct access to hardware primitives, vector
math, horizontal reductions, and specialized floating-point instructions.
They are distinguished syntactically by a leading `%` sigil and compile
directly to optimized LLVM instructions or LLVM target intrinsics without
function call overhead.

```dva
// Scalar & vector math
m = %min(10, 20)                        // 10
v = %clamp((5, 15, 25), 10, 20)         // (10, 15, 20)

// Horizontal reductions
s = %sum((1, 2, 3, 4))                  // 10
d = %dot((1.0, 2.0), (3.0, 4.0))        // 11.0

// Bit manipulation
n = %popcount(7)                        // 3
r = %rotl(1, 1)                         // 2
```

---

## 1. Syntax and Lexing

An intrinsic call is written with an identifier prefixed by `%`:

```
%<identifier>(arg1, arg2, ...)
```

- **Sigil `%`**: Tokenized by `scan_intrinsic` in `selfhost/src/lexer.dva`.
  When `%` is followed by an identifier start character, the `%` is captured
  as part of the identifier token (e.g. `TokKind.Id` with literal `"%min"`).
- **Bare Reference Ban**: Intrinsics can only appear in direct function call
  expressions. A bare reference to an intrinsic (e.g. `f = %min`) is rejected
  with compile-time error `E3100` ("intrinsic must be called directly with
  arguments").
- **Argument Arity**: Each intrinsic enforces a strict argument count:
  - 1 argument: `%abs`, `%sqrt`, `%floor`, `%ceil`, `%trunc`, `%round`,
    `%popcount`, `%clz`, `%ctz`, `%bswap`, `%bitreverse`, `%all`, `%any`,
    `%sum`, `%prod`, `%sin`, `%cos`, `%exp2`, `%log2`.
  - 2 arguments: `%min`, `%max`, `%copysign`, `%rotl`, `%rotr`, `%dot`,
    `%pow`, `%uadd_sat`, `%usub_sat`.
  - 3 arguments: `%clamp`, `%fma`, `%fmuladd`.
  - 2 or 3 arguments: `%shuffle`.
  Arity mismatches report `E3100`.

---

## 2. Dva Type System Rules for Intrinsics

Intrinsics operate under strict Dva static typing rules.

### 2.1 Primitive Types

Intrinsics accept a strictly defined subset of Dva primitive types:
- **`Int`**: 64-bit signed/unsigned integer (`i64` in LLVM).
- **`Float`**: 64-bit IEEE 754 double-precision float (`double` in LLVM).
- **`<>` (flag)**: 1-bit boolean polarity flag (`i1` in LLVM), produced by
  comparisons and represented by `<+>` (true) and `<->` (false).

**Strict Typing Guarantees**:
- **No Defaulting to Int**: If an operand's type cannot be statically inferred,
  the compiler emits `E3103` / `E3128`. Operands are never silently defaulted
  to `Int`.
- **No Implicit Coercion**: Dva performs **no implicit type conversions**:
  - `Int` does NOT coerce to `Float`. Passing an integer to a floating-point
    intrinsic (e.g. `%sqrt(16)`) is a compile-time type error. The programmer
    must write `%sqrt(16.0)` or explicit conversion `%sqrt(Float(16))`.
  - `<>` (flag) does NOT coerce to `Int` or `Float`.
  - Rams (`<A|B>`), Enums, Strings, Builders, Pointers, Arrays, and Maps are
    disallowed and rejected with type errors.

### 2.2 SIMD Vectors (Homogeneous Records)

In Dva, SIMD vectors are represented as **homogeneous records** — tuples where
every element shares the exact same primitive type:
- `(Int, Int, Int)` or `(Int * 3)`: 3-lane integer vector (`<3 x i64>`).
- `(Float, Float, Float, Float)` or `(Float * 4)`: 4-lane float vector
  (`<4 x double>`).
- `(<>, <>, <>, <>)`: 4-lane flag vector (`<4 x i1>`).

Heterogeneous records (e.g. `(Int, Float)`) are rejected.

### 2.3 Component-Wise Vector Execution & Broadcasting

For math operations (`%min`, `%max`, `%clamp`, `%abs`, `%sqrt`, `%pow`, etc.):
- **Pure Scalar**: When all arguments are scalars, the result is scalar.
- **Pure Vector**: When all arguments are homogeneous records of identical
  length and element type, the operation executes component-wise across all
  vector lanes, yielding a homogeneous record of the same shape.
- **Broadcasting (Splatting)**: When a scalar argument is passed alongside a
  vector in a multi-argument intrinsic, the scalar is automatically broadcast
  (splatted) across all lanes to match the vector length.
  Examples:
  - `%clamp(vec, 0.0, 1.0)`: With `vec: (Float * 4)`, the scalar bounds `0.0`
    and `1.0` are broadcast to 4-lane float vectors.
  - `%pow(v, 2.0)`: With `v: (Float * 3)`, the scalar exponent `2.0` is
    broadcast to `(2.0, 2.0, 2.0)`.
  - `%uadd_sat(v, 10)`: With `v: (Int * 4)`, the scalar `10` is broadcast to
    `(10, 10, 10, 10)`.
- **Record Return & Indexing**: A vector intrinsic returns a homogeneous record
  value. Elements are accessed via container indexing `v(0)`, `v(1)`, etc.

---

## 3. Catalog of Intrinsics

### 3.1 Bounding, Selection, & Math

These operations are polymorphic over numeric types (`Int` or `Float`):

| Intrinsic | Arity | Accepted Operand Types | Result Type | Lowering |
|---|---|---|---|---|
| `%min(a, b)` | 2 | `Int`, `(Int * N)`, or `Float`, `(Float * N)` | Same as operands | `llvm.smin` / `llvm.minnum` |
| `%max(a, b)` | 2 | `Int`, `(Int * N)`, or `Float`, `(Float * N)` | Same as operands | `llvm.smax` / `llvm.maxnum` |
| `%clamp(x, lo, hi)` | 3 | `Int`, `(Int * N)`, or `Float`, `(Float * N)` | Same as operands | `smin`/`smax` or `minnum`/`maxnum` |
| `%abs(x)` | 1 | `Int`, `(Int * N)`, or `Float`, `(Float * N)` | Same as operand | `llvm.abs` / `llvm.fabs` |
| `%shuffle(v, m)` | 2 | `v`: `(T * N)`, `m`: `(Int * M)` literal | `(T * M)` | `llvm.shufflevector` |
| `%shuffle(a, b, m)` | 3 | `a, b`: `(T * N)`, `m`: `(Int * M)` literal | `(T * M)` | `llvm.shufflevector` |

**Operand Rules**:
- In `%min`, `%max`, and `%clamp`, mixing `Int` with `Float` is rejected.
- For `%shuffle`, `T` may be `Int`, `Float`, or `<>` (flag). The mask `m` must
  be a record of compile-time integer literals specifying lane indices.

### 3.2 Horizontal Reductions

Horizontal reductions consume a homogeneous record and reduce all lanes into a
single scalar value:

| Intrinsic | Arity | Accepted Operand Types | Result Type | Lowering |
|---|---|---|---|---|
| `%all(v)` | 1 | `(<> * N)` (flag vector) | `<>` (flag) | `llvm.vector.reduce.and` |
| `%any(v)` | 1 | `(<> * N)` (flag vector) | `<>` (flag) | `llvm.vector.reduce.or` |
| `%sum(v)` | 1 | `(Int * N)` or `(Float * N)` | `Int` or `Float` | `llvm.vector.reduce.add/fadd` |
| `%prod(v)` | 1 | `(Int * N)` or `(Float * N)` | `Int` or `Float` | `llvm.vector.reduce.mul/fmul` |
| `%dot(a, b)` | 2 | Matching `(Int * N)` or `(Float * N)` | `Int` or `Float` | Component mul + reduce add |

**Operand Rules**:
- `%all` and `%any` **strictly require** a vector of `<>` (flag). Passing
  integer or float vectors is a compile error.
- `%sum` and `%prod` require a vector of `Int` or `Float`. Passing scalar
  values or `<>` (flag) vectors is rejected.
- `%dot` requires two vectors of identical length and identical numeric element
  type (both `Int` or both `Float`).

### 3.3 Floating-Point Math

These intrinsics **strictly require `Float` operands** (or homogeneous records
of `Float`):

| Intrinsic | Arity | Accepted Operand Types | Result Type | Lowering |
|---|---|---|---|---|
| `%sqrt(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.sqrt` |
| `%fma(a, b, c)` | 3 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.fma` |
| `%fmuladd(a, b, c)` | 3 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.fmuladd` |
| `%floor(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.floor` |
| `%ceil(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.ceil` |
| `%trunc(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.trunc` |
| `%round(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.round` |
| `%copysign(m, s)` | 2 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.copysign` |
| `%sin(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.sin` |
| `%cos(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.cos` |
| `%exp2(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.exp2` |
| `%log2(x)` | 1 | `Float` or `(Float * N)` | `Float` or `(Float * N)` | `llvm.log2` |
| `%pow(x, y)` | 2 | Base: `Float`/`(Float * N)`, Exp: `Float`/`(Float * N)` | `Float` or `(Float * N)` | `llvm.pow` |

**Operand Rules**:
- Passing `Int` operands to any floating-point intrinsic is rejected at compile
  time. Explicit conversion via `Float(x)` is required.
- In `%pow(x, y)`, if the base `x` is a vector and the exponent `y` is a scalar
  `Float`, `y` is broadcast across all lanes.

### 3.4 Bit Manipulation

These intrinsics **strictly require `Int` operands** (or homogeneous records
of `Int`):

| Intrinsic | Arity | Accepted Operand Types | Result Type | Lowering |
|---|---|---|---|---|
| `%popcount(x)` | 1 | `Int` or `(Int * N)` | `Int` or `(Int * N)` | `llvm.ctpop` |
| `%clz(x)` | 1 | `Int` or `(Int * N)` | `Int` or `(Int * N)` | `llvm.ctlz` (zero defined) |
| `%ctz(x)` | 1 | `Int` or `(Int * N)` | `Int` or `(Int * N)` | `llvm.cttz` (zero defined) |
| `%bswap(x)` | 1 | `Int` or `(Int * N)` | `Int` or `(Int * N)` | `llvm.bswap` |
| `%bitreverse(x)` | 1 | `Int` or `(Int * N)` | `Int` or `(Int * N)` | `llvm.bitreverse` |
| `%rotl(x, n)` | 2 | `x`: `Int`/`(Int * N)`, `n`: `Int`/`(Int * N)` | `Int` or `(Int * N)` | `llvm.fshl` |
| `%rotr(x, n)` | 2 | `x`: `Int`/`(Int * N)`, `n`: `Int`/`(Int * N)` | `Int` or `(Int * N)` | `llvm.fshr` |

**Operand Rules**:
- Floating-point operands (`Float`), `<>` (flag), and non-integers are
  rejected.

### 3.5 Saturating Arithmetic

Saturating integer operations interpret operands as unsigned 64-bit integers
and clamp results to `[0, 2^64 - 1]` rather than wrapping on overflow or
underflow:

| Intrinsic | Arity | Accepted Operand Types | Result Type | Lowering |
|---|---|---|---|---|
| `%uadd_sat(a, b)` | 2 | `Int`, `(Int * N)` | `Int` or `(Int * N)` | `llvm.uadd.sat` |
| `%usub_sat(a, b)` | 2 | `Int`, `(Int * N)` | `Int` or `(Int * N)` | `llvm.usub.sat` |

**Operand Rules**:
- **Strictly requires `Int`** or homogeneous records of `Int`. `Float` is
- Underflow in `%usub_sat` saturates at `0` (e.g. `%usub_sat(5, 10)` yields
  `0`).
- Scalar operands broadcast when combined with a vector operand.

### 3.6 Memory Block Primitives

These intrinsics perform high-throughput bulk memory copies and initialization:

| Intrinsic | Arity | Accepted Operand Types | Result Type | Lowering |
|---|---|---|---|---|
| `%memcpy(dst, src, n)` | 3 | `dst`: `Addr`, `src`: `Addr`, `n`: `Int` | `Addr` (`dst`) | `llvm.memcpy` |
| `%memmove(dst, src, n)` | 3 | `dst`: `Addr`, `src`: `Addr`, `n`: `Int` | `Addr` (`dst`) | `llvm.memmove` |
| `%memset(dst, val, n)` | 3 | `dst`: `Addr`, `val`: `Int`, `n`: `Int` | `Addr` (`dst`) | `llvm.memset` |

**Operand Rules**:
- `dst` and `src` accept pointers (`Addr`, `&b`, `&s`, or raw addresses).
- For `%memset`, `val` is truncated to an 8-bit byte value (`u8`/`i8`).
- `n` is the byte count to copy/fill (`Int`).
- In `%memmove`, `dst` and `src` memory ranges may safely overlap. In `%memcpy`,
  ranges must be disjoint.
- Returns the destination pointer `dst` as `Addr`.

---

## 4. Linkage and Code Generation

- **LLVM Lowering**: Intrinsics map directly to overloaded LLVM intrinsic
  declarations (e.g. `@llvm.smin.v3i64`, `@llvm.sqrt.f64`, `@llvm.pow.v4f64`).
- **Standard Linker Libraries**: Math intrinsics such as `%fma`, `%sin`, or
  `%pow` may expand to libc math functions on target architectures lacking
  dedicated hardware instructions. To guarantee link compatibility across all
  targets, the compiler driver (`selfhost/src/edva.dva`) automatically links
  `libm` (`-lm`) alongside `pthread` for all generated binaries.
