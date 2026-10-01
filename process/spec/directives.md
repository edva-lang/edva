# Directives in Dva — the full spec

**Status:** authoritative reference. Sources of truth: `selfhost/src/` (the
compiler), `GRAMMAR.md` §1.4, and the HARD RULES in `AGENTS.md`. See also:
- `process/spec/metaprogramming.md` for compile-time (`#!`) execution and types
- `process/spec/functions.md` for function signatures and exports
- `process/spec/types.md` for `#type` definitions and recursive types

Dva uses `#`-prefixed identifiers for compiler directives, module management,
linkage control, and metaprogramming. Dva has no bare keywords (`if`, `fn`,
`import`, `pub`, `return` do not exist). All language-level meta-instructions
are introduced by a `#` directive token.

---

## 1. Syntax Overview & Lexer Tokenization

Directives are recognized during lexing as atomic tokens:
* `#word` where `word` is a known directive keyword emits its dedicated token
  kind (e.g., `#use`, `#public`, `#export`, `#type`).
* `#!` is scanned as the compile-time execution prefix token (`.CT`).
* `#pragma` lexes followed by pragma-specific sub-arguments.

All declaration-wrapping directives (`#public`, `#private`, `#export`,
`#foreign`) follow a **uniform syntax** supporting both single-line prefix
and multi-line indented block forms:

```dva
// Single-line prefix form
#public add = a, b => a + b
#export "c_sum" add

// Multi-line indented block form
#public
   add = a, b => a + b
   sub = a, b => a - b
   #type Point (x: Float, y: Float)
```

---

## 2. Module Visibility & Linkage Directives

### 2.1 `#use` — Module Import

Imports an external module into the current file namespace:
```dva
#use str
#use net/http
#use ../utils/math
#use "path with spaces/mod"
```
Quotes are optional around module paths unless the path contains whitespaces.

Resolution rules:
1. Relative to the importing `.dva` file's own directory.
2. Under `<edva-binary-dir>/std/`.

The module loader is **file-first**: it checks `<dir>/<name>.dva` first; a
directory `<dir>/<name>/` containing `main.dva` is used for multi-file modules.
Imported bindings are qualified by the module's final path segment
(`#use net/http` binds namespace `http::*`).

#### `#use(import)` — Unqualified Module Import
Writing `#use(import) path` imports the module and brings its public symbols (types,
functions, foreign declarations, and global variables) into the importing scope without
requiring the `module::` prefix:
```dva
#use(import) std/str

run = _ =>
   is_digit('5') | print $ "digit"
```
Name clash between symbols imported from different modules or with declarations in the
importing file is a hard compile-time error (`E3033`). Local bindings inside functions
shadow imported symbols without error.

### 2.2 `#use(dynamic)` — Dynamic Module Import (Hot Reload)

Imports a module with dynamic dispatch indirection for hot-reloading
(replaces legacy `#use-dynamic`):
```dva
#use(dynamic) views
#use(dynamic, import) views
```
Call sites to the module's functions are dispatched through dynamic function
pointers (`@dva_dynptr.<module>::<fn>`).
The module exposes two synthesized reload functions:
- `<module>::reload: () => <>` compiles the module source to a shared library
  (`/tmp/<module>_hot.so`) via `edva -shared` and hot-swaps all module function
  pointers in-place while preserving application state.
- `<module>::reload_so: String => <>` hot-swaps all module function pointers
  from the specified `.so` path.

Both return `<+>` on success and `<->` on failure.

### 2.3 `#public` (or `#pub`) — Module Export

Marks declarations visible to external modules via `#use`:
```dva
#public
   version = "1.0.0"
   add: Int, Int => Int
   add = a, b => a + b
   #type Config (port: Int, host: String)
```

* `#pub` is accepted as an exact synonym for `#public`.
* Can wrap variable assignments, function definitions, `#type` declarations,
  and `#foreign` declarations.
* Public symbols are registered in the module table as `module::name`.

### 2.3 `#private` — Module Privacy & Scoping Override

Hides declarations from importing modules:
```dva
#private secret_key = 0xDEADBEEF
#private helper_fn = x => x * 2
```

* **Symbol Mangling**: Private declarations are registered internally under
  `module::#name`.
* **Access Control**: Inside its own module, code refers to `secret_key` via its
  bare identifier. Importers attempting qualified access (`module::secret_key`)
  cannot resolve it and receive compile error `E3004` ("undefined identifier").
* **Scoping Override**: `#private` can be placed inside an enclosing `#public`
  block to explicitly hide specific auxiliary helpers.

### 2.4 Visibility Contract & Defaults

Dva's module visibility operates on the following rules:
1. **Modules using `#public`**: Strictly **private by default**. Any top-level
   declaration not enclosed in `#public` or marked `#export` remains private
   to the module.
2. **Modules without `#public`**: To preserve backward compatibility with
   legacy modules, a module containing zero `#public` directives exports all
   top-level declarations unless explicitly marked `#private`.

### 2.5 `#export` — External C Linkage

Marks a function definition for export to external linkers and C code:
```dva
// Standard export: symbol name matches Dva function name
#export add = a, b => a + b

// Aliased export: defines exact external unmangled C symbol name
#export "my_custom_c_api" calculate = x => x * 42
```

* **Function Only**: Applying `#export` to a variable or non-function binding
  is a compile error (`E2091`).
* **Linkage**: Emitted with LLVM `ExternalLinkage` and an unmangled symbol name.
* **Implies `#public`**: Any exported function is automatically included in the
  module's public symbols for other Dva modules.
* **C Header Generation**: Running `edva` with `-H <file.h>` or
  `--header <file.h>` generates a C99-compatible header containing include
  guards, `<stdint.h>`/`<stdbool.h>`, `extern "C"` wrappers, `typedef struct`
  definitions for record types used in signatures, and C function prototypes.

### 2.6 `#foreign` — Foreign C ABI Bindings

Imports external C symbols into Dva code using native `=>` signature syntax:
```dva
#foreign "libc"
   puts: String => Int
   c_malloc = malloc: Int => Addr
   free: Addr => ()
```

* The optional string literal specifies the ABI/library (`"libc"` or library
  path).
* Uses standard Dva function signatures: positional parameter types, `=>`, and
  the return type.
* Void returns use the standard Dva unit type `()` (not C `void`).
* Supports aliasing on declaration:
  `dva_name = c_symbol: ParamTypes => RetType`.
* Zero-argument foreign functions declare `() => RetType`.

### 2.7 Marked Global Declarations (`::name`) & Global Mutation (`::=`)

A module-level variable can be declared with a leading `::` prefix to mark it as
a shadow-proof global variable (Issue #23):
```dva
::counter = 0
::active_flag := <+>
```
* **Inside functions**: Writing `counter = expr` (or `::counter = expr` or
  legacy `counter ::= expr`) mutates the marked global directly without creating
  a local variable shadow.
* **Legacy Global Mutation (`::=`)**: `name ::= expr` writes to a module/global
  binding even if not explicitly marked with `::`, bypassing any local shadows.
  Target must exist (`E3123`).

---

## 3. Type Declarations (`#type` & `#packed`)

Declares named user types (Enums, Rams, composite Records, and Type aliases):
```dva
#type Color <Red, Green, Blue>
#type Result <Value | Error>
#type Point (x: Float, y: Float)
#type IntList (head: Int, tail: IntList)
```

### 3.1 Packed Records & Bitfields (`#packed`)

Prefixing a record schema with `#packed` defines byte-aligned packed structs or
integer bitfield layouts (see `process/spec/types.md` §5.7):
```dva
Header: #packed (magic: u8, flags: u16, len: u32)
BitFlags: #packed u16 (fin: 1, syn: 1, rst: 1, res: 13)
```

* **Mutual & Self-Recursion**: The type name is registered before parsing its
  variants and fields, enabling direct recursive types without pointers.
* **Forward References**: Type identifiers not yet declared are deferred until
  codegen against the fully-registered type table.

---

## 4. Compiler Pragmas (`#pragma`)

File-scoped compiler configuration directives:

### 4.1 `#pragma number <type>`
Switches the default integer literal type for all subsequent integer literals
in the file:
```dva
#pragma number i16
table_entry = 42    // Typed as i16 instead of default Int (i64)

#pragma number default
standard = 100      // Restores standard Int
```
* `<type>` accepts `i8`, `u8`, `i16`, `u16`, `i32`, `u32`, `i64`, `u64`, or
  `default`.
* Explicit literal suffixes (e.g. `5u8`, `9i64`) always override the pragma.

### 4.2 `#pragma fpfast <all|none>`
Toggles fast-math floating-point optimizations in generated LLVM IR:
```dva
#pragma fpfast all   // Enables aggressive FP algebraic transformations
#pragma fpfast none  // Enforces strict IEEE 754 compliance
```

### 4.3 `#pragma swizzle <all|xyzw|rgba|none>`
Configures vector component swizzling for homogeneous records:
```dva
#pragma swizzle xyzw  // Enables spatial swizzles (.xy, .zw, .yx, .x, etc.)
#pragma swizzle rgba  // Enables color swizzles (.rgb, .rgba, .bgr, .r, etc.)
#pragma swizzle all   // Enables both sets (mixing components like .xr is rejected)
#pragma swizzle none  // Disables swizzling; unmapped fields trigger standard E3130
```
* Exact field names always take precedence over swizzle component matching.
* Single-component swizzles (e.g. `v.x`) extract the scalar element.
* Multi-component swizzles (e.g. `v.xy`, `v.xx`) lower via `LLVMBuildShuffleVector`.
* Component indices out of record bounds emit compile error `E3043`.

---

## 5. Concurrency Directives (`#spawn` & `#join`)

Dva provides native thread primitives as directives:

### 5.1 `#spawn <call>`
Launches a function call or closure asynchronously in a new worker thread:
```dva
worker = x => heavy_compute(x)
handle = #spawn worker(42)
```
* Returns a `ThreadId` handle representing the worker thread.

### 5.2 `#join <handle>`
Blocks until the worker thread identified by `handle` terminates:
```dva
result = #join handle
```
* Yields `< T | Error >` where `T` is the return value of the spawned closure
  and the negative branch captures thread panics.

---

## 6. Process Lifecycle (`#exit`)

Immediately terminates the running process with an integerish status code:
```dva
#exit 0
#exit 1
```

* Parses the following code at the choice tier:
  ```dva
  #exit is_ok | 0 | 1
  ```
* **Void Expression**: `#exit` produces no value and is compatible with any
  branch type; subsequent code in the same block is unreachable dead code.
* **Epilogue Execution**: On hosted targets, arena cleanup executes before
  invoking `exit(3)`. On bare-metal (`-no-runtime`) targets, the status code
  is recorded in `dva_exit_code` and control halts.

---

## 7. Metaprogramming & Compile-Time Introspection

### 7.1 `#!` — Compile-Time Evaluation (CTFE)
Forces compile-time evaluation via JIT execution:
```dva
TABLE_SIZE = #! 1024 * 64
```
* As a parameter prefix (`#! T`), marks a compile-time type parameter.
* Erased before runtime execution; cannot leak runtime references.

### 7.2 `#size` — Type Size Operator
Yields the compile-time size in bytes of a type as an integer constant:
```dva
ptr_size = #size Addr
float_size = #size Float
```

---

## 8. Compile-Time Diagnostics (`#error` & `#warn`)

Dva provides directives for user-defined compiler diagnostics during code
generation and compile-time evaluation (CTFE):

### 8.1 `#error <msg>`
Aborts compilation with an error diagnostic (`E3174`):
```dva
#error "Unsupported platform configuration"
```
* **Message Evaluation**: Accepts a String literal or CTFE expression.
* **Evaluation Context**: Evaluated during top-level codegen, within `#!` CTFE
  blocks, or when instantiated inside monomorphized generic functions. If
  encountered in an untaken CTFE branch (`#! (cond | #error ... | fallback)`),
  it is not executed and does not abort compilation.

### 8.2 `#warn <msg>`
Emits a non-fatal compile-time diagnostic:
```dva
#warn "Deprecated API usage"
```
* Prints `warning [<line>:<col>]: <msg>` to stderr and continues compilation.
