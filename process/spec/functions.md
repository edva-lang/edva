# Functions in Dva — the full spec

**Status:** authoritative reference. Sources of truth: `src/` (the compiler)
and `GRAMMAR.md` §2.8. See also:
- `process/spec/closures.md` for runtime fat-pointer layout and escape analysis
- `process/spec/custom-operators.md` for operator symbols as function names
- `process/spec/metaprogramming.md` for compile-time (`#!`) generic functions
- `process/spec/operators.yaml` for application (`$`) and feed (`$>`) tiers

In Dva, functions are first-class values. There are no bare keywords for
functions — no `fn`, `def`, `func`, or `return`. Every function definition is an
expression producing a function value.

---

## 1. Syntax Overview & Core Grammar

```
FnExpr     ::= Identifier { "," Identifier } "=>" ( Expr | Block )
             | "!=>" ( Expr | Block )          (* zero-argument function *)
             | "(" Expr ")"                    (* implicit param when Expr has free '_' *)
             | Section                         (* operator section, e.g. '+ 1' *)

FnSig      ::= "()" "=>" Type                  (* zero-argument signature *)
             | Type { "," Type } "=>" Type     (* N-argument signature *)

Block      ::= Indent { Statement } Dedent
```

Key syntactic principles:
- **Bare parameters:** Parameters are written bare without enclosing
  parentheses: `add = a, b => a + b`. Writing `(a, b) => ...` is a grammar
  error.
- **Mandatory parameters for `=>`:** The parameter list before `=>` cannot be
  omitted. Writing `=> body` is a syntax error (`E2050`).
- **No inline parameter types:** `add = a: Int, b: Int => ...` is rejected
  (`E2067`). Types are declared exclusively in separate signatures.
- **Implicit returns:** Dva has no `return` keyword. A function returns the
  value of its body expression, or the value of the last statement in an
  indented block.
- **Zero arguments:** Defined using `!=>` and called with postfix `!`.
- **Unit / Void:** `()` is strictly a type (zero arguments in `() => T` or
  void return in `T => ()`). There is no `()` unit value: `f(())` throws
  `E2104`.

---

## 2. Declaring Functions (Signatures)

Function signatures are declared separately as forward type annotations:

```dva
// Positional parameter types, '=>', then return type
add: Int, Int => Int
add = a, b => a + b

// Multi-argument function with different types
concat_repeat: String, Int => String
concat_repeat = s, n =>
   res := ""
   0..n @ _ => res = res + s
   res
```

### 2.1 Forward Annotations & Validation

A signature annotation:
1. **Types the parameters statically:** callers must supply matching types at
   compile time (`E3094`).
2. **Validates parameter arity:** the parameter count in the definition must
   match the signature exactly (`E3092`).
3. **Validates the return type:** the value produced by the body must match the
   declared return type (`E3093`). If returning a composite (record or slice),
   the layout must match (`E3149`).
4. **Fixes the LLVM function type:** enables direct, efficient calls and safe
   indirect dispatch.

### 2.2 Parenthesizing Function Types

When writing a signature:
- At the top level, parameter types are written flat: `Int, String => Float`.
- When a function type is used **as a parameter** or **as a return type**, it
  must be parenthesized once: `(Int, String => Float)`.
- Doubly-parenthesized parameter lists such as `((Int, Int) => Int)` are
  rejected (`E2082`) because the inner `(Int, Int)` parses as a record type.

```dva
// Higher-order function taking a function parameter
apply_int: (Int => Int), Int => Int
apply_int = f, x => f(x)

// Function returning a function
make_multiplier: Int => (Int => Int)
make_multiplier = factor => n => factor * n
```

---

## 3. Defining Functions

### 3.1 Standard Named Functions

A function definition binds a function expression to an identifier:

```dva
// Single-line expression body
square = x => x * x

// Multi-line indented block body
clamp = val, min_val, max_val =>
   val < min_val | min_val
   val > max_val | max_val
   val
```

### 3.2 Implicit-Parameter Lambdas (`_`)

Parenthesizing an expression containing a free `_` desugars into a
single-parameter lambda `_ => ...`:

```dva
// Explicit lambda
double = x => x * 2

// Desugared implicit lambdas
double = (_ * 2)
shift  = (3 - 2 * _)
id     = (_)

// Only the innermost parentheses desugar:
// (3 - 2 * (_ + 1)) leaves (_ + 1) as a lambda and evaluates:
// 3 - 2 * (lambda)
```

### 3.3 Operator Sections

An operator with trailing whitespace and an argument acts as a section,
desugaring into `_ => _ <op> <rhs>`:

```dva
inc = + 1         // _ => _ + 1
triple = * 3      // _ => _ * 3

print_int $ inc $ 5     // 6
print_int $ triple $ 4  // 12
```

### 3.4 Nested & Local Functions

Functions may be defined locally within any scope:

```dva
quad: Int => Int
quad = x =>
   dbl = n => n * 2
   dbl(dbl(x))
```

---

## 4. Null Arguments (Zero-Argument Functions)

Dva provides first-class support for functions taking zero arguments (nullary
functions):

| Phase | Syntax | Example |
|---|---|---|
| **Declaration** | `() => ReturnType` | `get_seed: () => Int` |
| **Definition** | `!=> Body` | `get_seed = !=> 42` |
| **Invocation** | `identifier!` | `s = get_seed!` |

### 4.1 Declaration: `() => Type`

A zero-argument signature starts with `()`:

```dva
timestamp: () => Int
greet: () => String
```

### 4.2 Definition: `!=>`

Because `=>` requires an explicit parameter list, `!=>` is the dedicated
operator for defining zero-argument functions:

```dva
// Simple constant or calculation
get_version = !=> "v1.0.0"

// Indented block
gen_id: () => Int
gen_id = !=>
   t = get_time!
   t * 1000 + 7
```

Omitting parameters with `=>` (e.g. `foo = => 1`) is forbidden (`E2050`).

### 4.3 Invocation: Postfix `!`

Zero-argument functions are invoked using postfix `!`. The `!` must be adjacent
to the callee (no leading whitespace):

```dva
v = get_version!
id = gen_id!
```

**Disambiguation from prefix `!` (freeze/negate):**
- Adjacent postfix `!` is a zero-argument call: `fun!`.
- Leading whitespace before `!` makes it prefix negation / freeze: `!b` or
  `! x`.

### 4.4 Unit Type vs No Unit Value (`f(())` Throws E2104)

`()` exists **strictly as a type** (the zero-argument signature `() => T` or the
void return type `T => ()`). There is **no unit value**:
- `()` cannot be constructed as a value anywhere in expressions.
- Attempting to pass `()` as an argument — e.g. `f(())` — or assign it to a
  variable (`x = ()`) is a compile-time error:
  `E2104: unit '()' is only valid in a type declaration, not as a value`.
- To call a zero-argument function, use postfix `!`: `f!`.
- An empty record literal does not exist; records require at least one field.

---

## 5. No Return Value (Void / Unit Return)

In Dva, side-effect-only functions declare `()` as their return type:

```dva
log_msg: String => ()
log_msg = s =>
   print $ "[LOG] " + s
```

### 5.1 Semantics of `=> ()`

- **Canonical Void:** The declared return type `()` corresponds to LLVM `void`.
- **Value Discard:** Any incidental value produced by the body expression (e.g.
  `print_int` returning `Int`, or an `@` cycle returning `Unassignable`) is
  automatically discarded.
- **Code Generation:** The compiler generates a clean LLVM `ret void`
  instruction.
- **Unassignable Result:** Calling a void function cannot be bound to a variable
  expecting a value:

```dva
// Iteration helper returning ()
for_each: (Int * 3), (Int => ()) => ()
for_each = arr, action =>
   arr @ elem => action(elem)

// Action function returning ()
print_item: Int => ()
print_item = n => print_int $ n

for_each((10, 20, 30), print_item)
```

---

## 6. Using and Calling Functions

Functions can be called through several forms depending on convenience and data
flow.

### 6.1 Direct Parenthesized Calls

The standard call syntax places comma-separated arguments in parentheses:

```dva
res = add(10, 20)
chained = make_adder(5)(10)
```

### 6.2 Postfix Zero-Argument Calls

```dva
val = read_sensor!
```

### 6.3 Application Operators (`$` and `$>`): Multi-Argument Pipelines

Dva provides powerful multi-argument application and feed operators:

#### Infix Apply (`$`): Appends Arguments
`f $ x` is equivalent to `f(x)`. When applied to an existing call, it appends
arguments:
```dva
f(a) $ b         // f(a, b)
f(a, b) $ c      // f(a, b, c)
print $ "hello"  // print("hello")
```

#### Feed / Reverse Application (`$>`): Prepends Arguments
`x $> f` is equivalent to `f(x)`. When feeding into an existing call, it prepends
arguments:
```dva
x $> f(a)        // f(x, a)
x $> f(a, b)     // f(x, a, b)
```

#### Pipeline Flattening
Combining `$>` and `$` creates clean, readable processing pipelines:

```dva
// Equivalent to: process(raw_data, config, extra_flags)
result = raw_data $> process(config) $ extra_flags
```

#### Operator Precedence
- `=>` binds tighter than `$`.
- `$>` binds tighter than `$`.
- Choice tier (`|`, `[...]`) is below feed/apply: the RHS of `$` and `$>`
  absorbs an unparenthesized choice expression. Parenthesize when needed.

### 6.4 Custom Operator Fixity Calls

When a function name is an operator symbol with a `#infix` annotation, it can
be called infix:

```dva
+++ : #infix 40 45, Int, Int => Int
+++ = a, b => a + b * 2

// Infix syntax desugars directly to a call:
x = 3 +++ 4    // +++(3, 4)
```

### 6.5 Calling in Iterations and Choices

Functions serve as callbacks in `@` cycles and choice branches:

```dva
// Iteration
"hello" @ b, i => print_int $ b

// Predicate guard in choice
classify = x =>
   x [n => n < 0] "negative"
     [0]          "zero"
     |            "positive"
```

---

## 7. Higher-Order Functions & Closures

Functions in Dva are first-class values that can be passed, returned, stored in
data structures, and invoked dynamically.

### 7.1 Passing Functions as Arguments

```dva
transform: (Int * 3), (Int => Int) => (Int * 3)
transform = a, op =>
   (op(a.0), op(a.1), op(a.2))

sq: Int => Int
sq = n => n * n

res = transform((1, 2, 3), sq)  // (1, 4, 9)
```

### 7.2 Generic Higher-Order Functions (`#!`)

Compile-time type parameters (`#! T: Type`) allow polymorphic combinators:

```dva
apply_twice: #! T: Type, (T => T), T => T
apply_twice = f, x => f(f(x))

dbl: Int => Int
dbl = n => n * 2

print_int $ apply_twice(dbl, 5) // 20
```

### 7.3 Returning Functions (Currying & Factories)

```dva
multiplier: Int => (Int => Int)
multiplier = factor => n => factor * n

m10 = multiplier(10)
print_int $ m10(3)   // 30
```

### 7.4 Storing Functions in Composites

Function values retain their `.Function` type info when stored and read from
composite types:

```dva
// In Records
#type Handler (name: String, run: (Int => Int))
h = Handler(("inc", (x => x + 1)))
print_int $ h.run(5)     // 6
print_int $ (h.run)(10)  // 11

// In Growable Arrays
#type FuncList ((Int => Int)){}
fl := FuncList
fl += (x => x * 2)
f = fl(0) | _ | _        // unwrap < elem | Error >
print_int $ f(21)        // 42

// In Enums
#type Callback < Task((Int => ())), Done >
cb = Callback(Task, (code => print_int $ code))
cb [Task fn] fn(0)
   [Done]    print $ "complete"
```

---

## 8. Runtime Representation & Closures

### 8.1 The Two-Word Struct `{ fn_ptr, env_ptr }`

A function value at runtime is **always** a pointer to a two-word struct
(`16` bytes):
1. `fn_ptr`: Code pointer to the compiled function.
2. `env_ptr`: Pointer to captured environment struct, or `null` if nothing is
   captured.

### 8.2 Type Erasure

- **No RTTI, ever:** Function values never carry runtime type descriptors, tag
  words, or vtables.
- Types are completely erased at runtime.
- Static typing is maintained entirely at compile time via static propagation
  and unification.

### 8.3 Copy-at-Capture Semantics

When a lambda references variables from an enclosing scope:
- It captures variables **by value** at the time the closure is created.
- The environment struct receives an independent, mutable copy.
- Mutating the captured copy inside the closure does not mutate the outer local,
  and mutations to outer locals after construction do not affect the closure.

```dva
make_counter: Int => (Int => Int)
make_counter = start =>
   count := start
   step => (count := count + step; count)

c1 = make_counter(10)
c2 = make_counter(100)

print_int $ c1(1)  // 11
print_int $ c1(1)  // 12
print_int $ c2(5)  // 105 (independent state)
```

### 8.4 Lifetime & Escape Analysis

- **Non-escaping closures:** If the closure does not outlive its enclosing
  stack frame, its environment is allocated on the stack (entry block `alloca`).
- **Escaping closures:** If the closure is returned, stored in a composite, or
  escapes the frame, its environment is allocated in the arena
  (`dva_arena_alloc`).
- **Non-capturing functions:** Functions capturing nothing use a module-level
  static `{ fn_ptr, null }` constant, incurring zero allocation overhead.

### 8.5 Global Variables & Function Scoping

Dva distinguishes between ordinary top-level bindings and marked globals:

- **Marked Global Declarations (`::name`):** Declaring a top-level binding with
  `::name = expr`, `::name := expr`, or `::name: Type` designates it as a
  marked global variable.
- **Direct Global Mutation from Functions:** Inside any function, an
  assignment `name = expr` (or `::name = expr`) mutates the marked global
  directly. It does **not** create a function-local shadow.
- **Top-Level Shadowing Protection:** If a top-level binding is declared
  without `::` (`x = 10`), a function's `x = expr` or `x := expr` always creates
  a fresh local binding. This protects module-level constants and state from
  accidental clobbering.
- **Legacy Global Mutation (`::=`):** The legacy `name ::= expr` operator
  remains supported for backward compatibility to write to existing module
  globals without requiring `::` at declaration time.

---

## 9. Type System Constraints & Error Diagnostics

### 9.1 No Defaulting to `Int`

Dva strictly forbids defaulting unknown types to `Int`. If a function value's
types cannot be statically determined, compilation fails:
- **`E3128`**: Function used as a value before any call site and without a
  declared signature.
- **`E3103`**: Return type of an indirect function call could not be statically
  determined.

### 9.2 Common Function Diagnostic Codes

| Code | Cause | Solution |
|---|---|---|
| `E2011` | Expected `=>` after parameter list | Check parameter syntax; do not wrap parameters in `(...)` |
| `E2050` | Empty parameter list before `=>` (`=> body`) | Use `!=>` for 0 args, or `_ =>` for 1 implicit arg |
| `E2067` | Inline parameter type annotation | Move types to a separate forward signature: `f: T => R` |
| `E2068` | Missing `=>` before return type in signature | Write `f: T1, T2 => R` |
| `E2082` | Double parens around function type parameter | Write `(T1, T2 => R)`, not `((T1, T2) => R)` |
| `E2104` | Attempting to use `()` as a value or argument | `()` is strictly a type; call zero-arg functions with `f!`, never `f(())` |
| `E3092` | Parameter count mismatch with signature | Ensure definition parameter count matches signature |
| `E3093` | Body return type does not match signature | Check body's returned value against signature return type |
| `E3094` | Call-site argument type mismatch | Pass arguments matching the signature types |
| `E3103` | Unresolvable indirect call return type | Add signature annotations to clarify function types |
| `E3128` | Function value used without signature or calls | Add forward signature annotation before taking value |
| `E3149` | Record/Slice return layout mismatch | Ensure body record field layout matches signature record |
