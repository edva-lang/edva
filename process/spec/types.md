# Types in Dva — the full spec

**Status:** authoritative reference. Sources of truth: `src/` (the compiler)
and `GRAMMAR.md` §2.5, §2.8, §2.13. See also:
- `process/spec/ramifications.md` for ram layouts and logical operators
- `process/spec/enums.md` and `process/spec/rams-vs-enums.md` for enums
- `process/spec/closures.md` and `process/spec/functions.md` for function types
- `process/spec/maps.md` for map types and operations
- `process/spec/metaprogramming.md` for compile-time `Type` and type generators

Dva is a statically typed language where types are completely erased at
runtime: there is **no RTTI, no runtime type tags, and no vtables**. The
compiler enforces strict typing with clear separation between basic scalar
types and composite shapes.

---

## 1. Recognized Type Names & Core Rules

### 1.1 The Closed Set of Type Names

The compiler recognizes **only** the following canonical type names:
- **Primitives:** `Int`, `Float`, `String`, `Addr`, `Rune`, `Builder`, `Error`.
- **LLVM scalar types:** `i1`, `i8`, `i16`, `i32`, `i64`, `f32`, `f64`, `void`,
  `ptr`.
- **Compile-time meta-type:** `Type`.
- **User-declared types:** Introduced via `#type Name <schema>`.

No other type names are recognized:
- No C type names (`int`, `size_t`, `char_ptr`, `uint8_t`, `float`, `double`).
- No camelCase aliases (`Int8`, `UInt32`, `Float32`, `Bool`, `RawPtr`, `Void`).
- Disallowed type aliases (`MyInt :: Int`) are rejected (`E2015`).

### 1.2 No Defaulting to `Int`

Nothing in Dva ever defaults to `Int`. If a type cannot be determined
statically through annotations, signatures, or inference, the compiler reports
an error (`E3103`, `E3128`) rather than assuming `Int`.

### 1.3 Complete Type Erasure

At runtime, all types are erased. Function values are `{ fn_ptr, env_ptr }` fat
pointers; composite types are arena-allocated buffers or inline structs. Type
safety is strictly static.

---

## 2. Basic (Primitive) Types

| Type | LLVM Representation | Description |
|---|---|---|
| `Int` / `i64` | `i64` (on 64-bit systems) | Default pointer-width signed integer |
| `i8`, `i16`, `i32` | `i8`, `i16`, `i32` | Exact-width signed integers |
| `Float` / `f64` | `double` (64-bit float) | IEEE 754 double precision |
| `f32` | `float` (32-bit float) | IEEE 754 single precision |
| `Rune` | `i64` (Unicode scalar) | 32-bit Unicode code point scalar |
| `String` | `{ i64 len, i8* data }` | Immutable UTF-8 fat string (16 bytes) |
| `Builder` | `{ i64 len, i8* data, i64 cap }*` | Mutable byte buffer pointer |
| `Addr` / `ptr` | `i8*` | Untyped memory address / raw pointer |
| `Error` | Record (6 fields) | Core error record (poisonous value) |
| `()` / `void` | `void` | Unit / void return type |
| `Type` | *(erased)* | Compile-time type-of-types value |

### 2.1 Integers and Suffixes

Integer literals default to `Int` (64-bit signed). Literals may specify an
explicit width suffix:
```dva
a = 42i16
b = 0xFFu8
c = 0b101010i32
d = 999i64
```
A file or module may switch the default integer literal type using:
```dva
#pragma number i16
// subsequent integer literals without suffix default to i16
#pragma number default
// restores default Int
```

### 2.2 Floating-Point Numbers

Floats must have digits on both sides of the decimal dot. Dangling dots
(`.5`, `1.`, `3.e4`) are illegal syntax errors (`E2041`, `E2042`):
```dva
x = 0.5        // valid
y = 1.0        // valid
z = 3.0e4      // valid
```

### 2.3 Runes and Character Literals

A `Rune` represents a single Unicode scalar value (codepoint):
- **Literal Syntax:** Single quotes surround a character, e.g. `'a'` (ASCII),
  `'🤔'` (multibyte UTF-8 codepoint `0x1F914`), `'é'`, `'中'`.
- **Escapes:** Standard escapes are supported: `'\n'`, `'\t'`, `'\''`, `'\\'`.
- **Syntax Diagnostics:** Empty character literals `''` produce `E1009`, and
  unterminated literals produce `E1010`.
- **Runtime Representation:** Stored in a 64-bit integer slot at runtime
  (`LLVMInt64Type()`), with `#size(Rune)` evaluating to 8 bytes.
- **Type Preservation:** Character literals are stamped with `val_type = .Rune`
  so inferred types and composite fields retain character identity.
- **Compile-Time Type Dispatch (`#! T: Type`):** `T == Rune` matches
  distinctly from `T == Int`. In `std/io.dva`:
  - `io::out(('A',))` formats the character `A`.
  - `io::out((65,))` formats the integer `65`.
- **Arithmetic & Logic:** `Rune` belongs to the `is_intish` family. Arithmetic
  (`r - 'a'`) and comparisons (`r == 'q'`) work directly without casts.
- **Unary UTF-8 Byte Width (`?r`):** Applying unary `?` to a `Rune` returns its
  encoded UTF-8 byte length (1 to 4) as an `Int`.
- **Rune Ranges (`'a'..'z'`):** Ranges between two `Rune` endpoints infer with
  element type `Rune`, preserving character identity in `@` cycles.
- **Coercion:** Explicit conversions use `Rune(int_val)` and `Int(rune_val)`.
- **Standard Library:** Core type for Unicode text processing in
  `std/unicode.dva` (`decode_rune: String, Int => Rune`, `utf8_width: Rune => Int`,
  `is_alpha: Rune => i1`) and `std/json.dva` (`append_utf8`).

### 2.4 Strings

Strings are immutable fat pointers `{ len, data }`. They carry no member fields
(`.len` and `.data` are removed):
- Byte length: `?s` (returns byte length as `Int`).
- Codepoint count: `??s` (returns Unicode codepoints count as `Int`).
- Codepoint iteration: `s @@ r => ...` (iterates codepoints with `r: Rune`).
- Data buffer address: `*s` (unary address-of, returns `Addr`).
- Copy: `++s` (returns fresh deep copy of string buffer).
- Byte append: `s + n` (returns new String with integerish byte `n` appended).
- UTF-8 Rune append: `s + r` (encodes 1-4 UTF-8 bytes for `r: Rune`).
- Concat: `s1 + s2` (allocates new String buffer with concatenated contents).

### 2.5 Builders

A `Builder` is a mutable byte buffer used for efficient string construction
and FFI targets:
- Creation: `b = {32}` (creates empty Builder with capacity 32).
- In-place append: `b += 65` (appends byte), `b += "str"` (appends string),
  or `b += r` (encodes 1-4 UTF-8 bytes when `r` is `Rune`).
- Tuple / Record append: `b += (s1, s2, s3)` appends each string directly with
  zero intermediate allocations. `b += (13, 10)` appends CRLF bytes.
- Pure append: `b + c` (returns a fresh Builder with byte or string appended).
- Address: `&b` (writable buffer address `Addr` for FFI calls).
- Freeze: `+b` (converts Builder into an immutable `String`).
- Length write: `?b = n` (sets length after external write into `&b`).

### 2.6 `Addr` and Raw Memory

`Addr` is an untyped pointer (`ptr`). Low-level memory operations use `@[...]`:
```dva
p = @[addr]        // bare pointer value (no memory access)
v = @[addr i32]    // volatile load of type i32 from addr
@[addr i32] = val  // volatile store of val to addr
```

#### Non-Escaping `Addr` Semantics Across Arena Restore Boundaries

To prevent dangling pointers and use-after-free when `Addr` values are derived
from arena allocations inside blocks that restore their arena, the compiler
enforces strict escape restrictions and generational pointer tagging:

1. **Block Result Restriction (`E3133`)**: A block that restores its arena
   cannot return an `Addr` (`E3133: Cannot return Addr from an arena-restore
   scope. Copy data explicitly with '++' before boundary.`). To return data,
   make an explicit deep copy using `++` before crossing the boundary.
2. **Outer Assignment Restriction (`E3134`)**: Inside an arena-restoring block,
   assigning a block-scoped `Addr` to an outer-scope binding or marked global
   is forbidden (`E3134: Assignment of block-scoped Addr to outer-scope binding
   escapes arena lifecycle.`).
3. **Generational Pointer Tagging (`E4011`)**: Pointers derived from arena
   allocations (`&b`, `&s`) inside arena-restore scopes encode the arena's
   current generation in their upper 16 bits (`raw_ptr | (arena.gen << 48)`).
   On dereference via `@[...]`, if the upper 16 bits are non-zero, they must
   match `current_arena_gen`; otherwise, execution aborts with `E4011: stale
   Addr dereference after arena restore`. Valid pointers have their upper 16
   bits masked off before emitting LLVM loads or stores.
4. **Transparent FFI Boundary**: When passing an `Addr` argument to a `#foreign`
   C call, any generational tag in the upper 16 bits is transparently stripped
   to ensure foreign functions receive canonical 48-bit pointers.

### 2.7 The Core `Error` Record

`Error` is the standard record type:
```dva
(code: Int, msg: String, file: String, line: Int, col: Int, context: (Int, Int))
```
Its value is **poisonous**:
- It is inert only when wrapped inside a ramification or enum payload
  (`<- Error(...) ->`).
- Anywhere else, or upon being bound/unwrapped by a choice branch, the program
  aborts immediately and prints the error fields.

### 2.8 Unit / Void (`()`)

`()` represents the unit/void type (LLVM `void`):
- It is **strictly a type**, never a value.
- Used in function signatures for 0 arguments (`() => RetType`) or side-effect
  functions (`Param => ()`).
- Constructing or passing `()` as an expression (e.g. `f(())` or `x = ()`) is a
  compile error (`E2104`).

### 2.9 The Compile-Time `Type`

`Type` is the compile-time type-of-types value used in generic metaprogramming
(`#! T: Type`). It is completely erased at compile time; attempting to use a
`Type` value at runtime produces `E3129`.

---

## 3. Composite Types

Composite types aggregate primitives or other composites. They have distinct
structural shapes.

### 3.1 Records (Tuples)

Records group positional or named fields into an arena-allocated struct:

```dva
// Named record type declaration
#type Point (x: Int, y: Int)

// Indented record type declaration
#type Person
   name: String
   age: Int

// Anonymous positional record types
p: (Int, String)

// 1-element record (requires trailing comma)
single: (Int,)

// Homogeneous fixed record (array repetition)
arr: (Int * 5)

// Record value literals use '=' for named fields:
pt = (x = 10, y = 20)
// Using ':' in record value literals is forbidden (E2107); ':' is for types.

// Record default values (Issue #32):
#type Style (color: Int = 0xFFFFFF, width: Int = 100, visible: <> = <+>)
s1 = Style()                  // all fields take default values
s2 = Style(color = 0xFF0000)  // width and visible take defaults

// Functional record update (Issue #32):
s3 = (s2, color = 0x00FF00 ..) // copies s2 with color updated
```

#### Operator Lifting & Reductions over Homogeneous Records (Issue #38)
Binary operators lift pointwise over homogeneous records of matching lengths:
```dva
v1 = (1, 2, 3)
v2 = (10, 20, 30)
v3 = v1 + v2         // (11, 22, 33)
v4 = v1 * 2          // scalar broadcast: (2, 4, 6)
cmp = v1 < v2        // (<+>, <+>, <+>)

// Boolean reductions:
all_pos = all(v1 > 0)   // <+>
has_zero = any(v1 == 0) // <->
```

#### Definite Field-Initialization Tracking
Records do not zero-fill. The compiler enforces definite field assignment:
- Reading an unwritten field is a compile error (`E3130`).
- Passing a partially-initialized record to a function is rejected (`E3132`).
- A homogeneous record requires whole-value initialization before element
  reads or writes (`E3131`).
- Fields must be initialized along all choice branches to be considered
  initialized after the choice join.

```dva
p: Point
p.x = 10
// p.y is unwritten!
// val = p.y      // compile error E3130
p.y = 20
// now fully initialized
```

### 3.1.1 Zero-Copy Record Views (Overlays)

An ephemeral, zero-copy typed view over a raw memory buffer is constructed
with `@[addr RecordType]`:
```dva
hdr = @[packet_addr Ipv4Header]
```
- **In-Place Field Access (Zero-Copy)**: Reading `hdr.field` compiles directly
  to an LLVM GEP + load from `packet_addr + offset`. Writing `hdr.field = val`
  compiles directly to a store to `packet_addr + offset`. Zero bytes are copied
  to the stack, and zero memory allocations occur.
- **Lexical Non-Escape Enforcement**: To ensure safety without lifetime
  annotations, a view cannot escape the lexical frame where it was created:
  - Returning a view from a function emits
    `E3150: View cannot escape function frame`.
  - Storing a view into a global variable (`::=`), heap record, or dynamic
    collection (`Array`) emits `E3150`.
  - Passing a view across `#spawn` thread boundaries or capturing it in an
    escaping closure emits `E3150`.
- **Snapshotting via Copy Operator (`++`)**: Deep-copies the view's bytes
  into a normal arena-allocated record:
  ```dva
  saved_header: Ipv4Header = ++hdr
  ```
  The snapshot is an independent, owned record value that is allowed to escape.

### 3.2 Dynamic Slices

A dynamic slice `(T[])` is a reference view `{ len, data }` over an existing
array or buffer:
- Declared as `(T[])`, e.g. `(Int[])` or `(String[])`.
- Obtained by range-indexing a fixed record, growable array, or slice:
  `arr(0..5)`, `arr(-2..)`, `arr(..-1)`.
- Clamping and negative offsets (Issue #75): Negative offsets resolve
  relative to length (`?arr + offset`), endpoints clamp to `[0, ?arr]`, and
  `start >= end` yields an empty slice (length 0). Slices never produce runtime
  errors.
- Element read: `sl(i)`.
- Element count: `?sl`.

### 3.3 Growable Arrays

Growable arrays are dynamically-sized collections:

```dva
#type Ints (Int){}          // default capacity 16
#type BigBuf (Int){1024}    // initial capacity 1024
```
- Materialization: `xs: Ints` or `xs = Ints`.
- Append: `xs += 42`.
- Copy: `++xs` deep-copies the growable array and its elements.
- Element count: `?xs`.
- Element iteration (Issue #27): `xs @ elem => ...` binds `elem` directly.
  Indexed iteration `xs @ elem, i => ...` binds element and index.
- Indexed read: `xs(i)` returns `< Int | Error >` (unwrap-or-panic:
  `xs(i) | _ | _` or `xs(i)!!`).
- Indexed write: `xs(i) = v` returns `< | Error >` (write-or-panic:
  `xs(i) = v !| _`).
- Slice view: `xs(0 .. ?xs)`.

### 3.4 Maps

Maps provide key-value associative storage:

```dva
#type Env String ^ Int      // String keys, Int values
#type Cache Int ^ String    // Int keys, String values
```
- Materialization: `m: Env` or `m = Env`.
- Insert / Update: `m ^ "port" = 8080`.
- Lookup: `m ^ "port"` returns `< Int | Error >`.
- Membership test: `m ^? "port"` returns bare Flag `<+>` or `<->`.
- Entry count: `?m`.

### 3.5 Ramifications (Rams)

A ramification is a two-branch polarity type (positive left, negative right).
Bare `|` branches test slots in order.

**All four ramification shapes are distinct types and are not compatible with each other:**
- `RamNN` (`<>`) is `Flag` (represented as bare `i1`).
- `RamPN`, `RamNP`, and `RamPP` are heap ramifications (`{ tag, payload }` heap pointers).
There is no implicit coercion or subtyping between any of the four shapes:
a bare Flag `<+>`/`<->` never coerces to a heap unit `<++>`/`<-->`, and heap rams
of different shapes cannot be assigned to one another or passed where another
shape is expected. Negation (`!`) is valid **only** on `Flag` (`RamNN`); heap
rams cannot be negated (`E3008`).

```dva
#type Flag <>                  // RamNN: both slots bare unit (Flag, i1)
#type Option < Int | >         // RamPN: positive Int, negative unit (heap)
#type Fallible < | String >    // RamNP: positive unit, negative String (heap)
#type Result < Int | Error >   // RamPP: positive Int, negative Error (heap)
```
- Unit constants: `<+>` / `<->` (flags), `<++>` / `<-->` (heap units).
- Payload constructors: `<+ val +>`, `<+ val ->`, `<- err ->`, `<- err +>`.
- Monadic bind: `res $>> continuation` (propagates negative slot).

### 3.6 Enums

Enums are multi-variant tagged unions with named labels:

```dva
#type Color < Red, Green, Blue >
#type JsonValue <
   Null,
   Num(Float),
   Str(String),
   Arr((JsonValue[])),
   Obj(((key: String, val: JsonValue)[]))
>
```
- Tag comparisons: `e1 == e2` compares variant tags only (payload ignored).
- Construction: `Color(Red)` or `JsonValue(Num, 3.14)`.
- Matching: `val [Num n] print_float $ n [Str s] print $ s | ...`.

### 3.7 Functions

Functions are first-class closure values:
- Type signature: `(Param1, Param2 => RetType)`.
- In signatures, parameter types are written flat: `Int, Int => Float`.
- When nested in composite types or parameters, parenthesized once:
  `(Int, Int => Float)`. Doubly-parenthesized `((Int, Int) => Float)` is
  rejected (`E2082`).

---

## 4. Declaring and Defining Types

### 4.1 `#type` Directive

All user-declared types use `#type Name <schema>`:
```dva
#type Point (x: Int, y: Int)                 // Record
#type Line (start: Point, end: Point)        // Nested record
#type Ints (Int){}                           // Growable array
#type OptInt < Int | >                       // Ramification
#type Status < Ready, Busy, Failed(String) > // Enum
#type Registry String ^ Int                  // Map
```

### 4.2 `#private` Types

Types can be marked private to their declaring module:
```dva
#private #type InternalState (counter: Int, token: String)
```
Private types cannot be accessed outside the defining module.

### 4.3 Recursive & Forward-Referenced Types

Dva supports recursive and mutually recursive type declarations:
- Enum and ram variant names are registered before parsing their bodies,
  enabling direct self-reference (e.g. `Tree < Leaf(Int), Branch((Tree[])) >`).
- Unrecognized type names are treated as forward references and resolved after
  all declarations are parsed. Unresolved names trigger `E2014`.

### 4.4 Type Generators

A type generator defines a parameterized type schema evaluated at compile time:
```dva
Pair: #! T: Type => (first: T, second: T)
#type IntPair Pair(Int)
```

---

## 5. Type Coercion & Conversions

Dva provides explicit type coercion via call syntax `TypeName(expr)` or feed
piping `expr $> TypeName`.

### 5.1 Explicit Scalar Coercions

| Coercion | Meaning | Example |
|---|---|---|
| `Int(float_val)` | Truncates float towards zero to `Int` | `Int(3.9)` -> `3` |
| `Float(int_val)` | Converts signed integer to double `Float` | `Float(5)` -> `5.0` |
| `i8(val)`, `i16(val)` | Truncates integer to narrower bit width | `i16(70000)` -> `4464` |
| `i64(val)` | Sign-extends narrower integer to 64 bits | `i64(val16)` |
| `Rune(int_val)` | Coerces integer to 32-bit Rune | `Rune(65)` -> `'A'` |
| `Addr(int_val)` | Converts integer address to pointer (`inttoptr`) | `Addr(0x1000)` |
| `Int(addr_val)` | Converts pointer to integer (`ptrtoint`) | `Int(ptr)` |

```dva
a = i16(2)
b = Float(2)
c = 3.4 $> Int       // 3
d = Int(3.9)         // 3
```

### 5.2 Disallowed Coercions (Hard Compile Errors)

- **No `String(ptr)` (`E3065`):** Constructing strings from arbitrary raw
  pointers is forbidden. Strings must be created via literals, `+`, `++`,
  single-byte appends, or Builders (`!b`).
- **No `Error(val)` (`E3122`):** `Error` is a 6-field record, not a scalar. It
  must be instantiated with all 6 fields.
- **No `()` unit value (`E2104`):** `()` cannot be constructed or coerced.
- **No `Type` at runtime (`E3129`):** `Type` exists only at compile time.

### 5.3 Ban on Implicit Cross-Type Coercion

Dva strictly forbids implicit type conversions:

#### No Int <-> Float Implicit Coercion
Mixing `Int` and `Float` in arithmetic or comparisons without explicit coercion
is a compile error (`E3084`):
```dva
// print $ 2 == 2.0     // ERROR E3084
print $ Float(2) == 2.0 // OK
print $ 2 == Int(2.0)   // OK
```

#### No Flag <-> Heap Ram Coercion
- Bare Flags (`<+>` / `<->`) **never** coerce into heap rams (`<++>` / `<-->`):
  `Option(<+>)` is rejected (`E3056`, `E3083`).
- Heap rams **never** coerce down into bare Flags (`E3090`).

#### No Ram to Numeric Coercion
- A ram never coerces to an `Int` or boolean number (`E3139`). Matching must
  use branches (`flag | a | b`).

### 5.4 Composite Rebuilding & Type Coercion

Passing an existing record or tuple into a record type name rebuilds the
record under the declared type's canonical layout:
```dva
#type Vec2 (x: Int, y: Int)
v = Vec2((10, 20))
v2 = (10, 20) $> Vec2

#type Box (val: Int)
b = Box(42)          // 1-field record from scalar argument
```

### 5.5 Ram & Enum Type Verification

Invoking a declared ram or enum type validates the tag and payload at compile
time and returns the typed union:
```dva
#type Opt < String | >
s = Opt(<+ "data" ->)
n = Opt(<-->)

#type Status < Active, Inactive >
st = Status(Active)
```

### 5.7 Packed Records and Bitfields

Dva supports unified `#packed` record definitions and Zig-style integer bitfield
definitions:

#### Packed Records
Adding `#packed` before a record schema defines a packed struct with byte
alignment (no interior padding between fields and no tail padding):
```dva
Header: #packed (a: u8, b: u16, c: u8)
```
- `#size(Header)` returns 4 bytes (1 + 2 + 1) without alignment padding.
- Packed records can be used as memory overlays (`@[ptr Header]`) and for FFI.

#### Integer Bitfields
Prefixing `#packed` with a backing integer type (`u8`, `u16`, `u32`, `u64`)
defines a bitfield layout where fields specify individual bit widths:
```dva
TcpFlags: #packed u16 (
   fin: 1,
   syn: 1,
   rst: 1,
   psh: 1,
   ack: 1,
   urg: 1,
   ece: 1,
   cwr: 1,
   ns: 1,
   res: 7,
)
```
- The sum of all field bit widths must exactly match the backing integer's bit
  width, otherwise `E3153` is reported.
- Bitfield fields are accessed via ordinary dot notation (`flags.syn`).
- Reading a bitfield field shifts and masks the bits, returning an integer.
- Writing a bitfield field performs a read-modify-write on the backing integer.
- Bitfields can be nested directly within records or packed records.

---

## 6. Diagnostic Reference Table

| Code | Cause | Solution |
|---|---|---|
| `E2014` | Undeclared type name (forward reference unresolved) | Define the missing `#type` declaration |
| `E2015` | Disallowed type alias (e.g. `MyInt :: Int`) | Use canonical type name or declare a record `#type` |
| `E2041` | Leading dot on float literal (e.g. `.5`) | Add leading digit: `0.5` |
| `E2042` | Trailing dot on float literal (e.g. `1.`) | Add trailing digit: `1.0` |
| `E2057` | Expected type name | Check type annotation syntax |
| `E2082` | Double parens around function type parameter | Write `(T1, T2 => R)`, not `((T1, T2) => R)` |
| `E2086` | Missing type name after `#type` | Provide identifier: `#type Name ...` |
| `E2087` | Missing schema after `#type Name` | Provide record, ram, enum, or array schema |
| `E2104` | Attempting to use `()` as an expression or value | `()` is strictly a type; cannot construct unit values |
| `E2107` | Colon used in record literal field value | Record literal fields use '=' for values: `(x = 1)` |
| `E3008` | Invalid operand type for unary operator | Check operator requirements in spec |
| `E3023` | Adding invalid types to String | Use `s + n` for byte append, or `s + s` for concat |
| `E3050` | Defining variable with reserved type name | Choose a non-type variable name |
| `E3053` | Ramification constructor slot mismatch (unit vs payload) | Supply payload or unit tag matching declared slot |
| `E3054` | Ramification constructor payload type mismatch | Pass payload matching declared slot type |
| `E3056` | Heap ram constructed from bare Flag | Use `<++>` or `<-->` instead of `<+>` / `<->` |
| `E3065` | Constructing String from raw pointer | Build String via literals, `+`, `++`, or Builder `!b` |
| `E3083` | Flag unit used where heap unit required | Use `<++>` / `<-->` instead of `<+>` / `<->` |
| `E3084` | Comparing Int with Float | Coerce explicitly with `Float(x)` or `Int(x)` |
| `E3090` | Heap unit used where bare Flag required | Use `<+>` / `<->` instead of `<++>` / `<-->` |
| `E3094` | Argument type mismatch in function call | Pass argument matching signature type |
| `E3103` | Unresolvable return type | Provide type annotations / signatures |
| `E3122` | Coercion syntax used on `Error` type | Construct with 6 fields: `Error(...)` |
| `E3128` | Function value used without signature or calls | Declare signature: `f: T1, T2 => R` |
| `E3129` | Metaprogramming `Type` value escaped to runtime | `Type` values are compile-time only and erased |
| `E3130` | Read of uninitialized record field | Initialize field before reading |
| `E3131` | Homogeneous record not initialized whole before indexing | Initialize entire record before element access |
| `E3132` | Partially-initialized composite passed to function | Fully initialize composite before passing |
| `E3139` | Value guard matched against bare Flag | Use ram branches `flag | a | b` (rams never coerce) |
| `E3149` | Record or Slice return layout mismatch | Ensure body layout matches declared signature |
| `E3150` | View escaped its lexical frame | Keep views within their defining function frame; use `++view` to snapshot |
| `E3152` | Record field write type mismatch | Value type must match record field's declared type |
| `E3153` | Bitfield total width mismatch with backing integer | Adjust field bit widths to sum to the backing integer size |
