# Two-Way State Bindings & Property Lenses (`~~`)

Prefix operator `~~` desugars an lvalue expression into a 2-field record of
closures implementing a bidirectional property lens:

```dva
(get = !=> target, set = _v => target = _v)
```

## Syntax & Target Forms

The prefix `~~` accepts any valid lvalue:
1. **Direct Record Fields**: `~~settings.volume`
   - `get`: `!=> settings.volume`
   - `set`: `_v => settings.volume = _v`
2. **Nested Record Paths**: `~~player.stats.health`
   - If container expression contains function calls (`~~get_player().stats.health`),
     the container is evaluated once at binding creation time and bound to an
     intermediate reference.
3. **Indexed Elements**: `~~items(selected)`
   - Array / map container and index expressions are evaluated once at binding
     creation time.
   - `get`: `!=> bound_arr(bound_idx)!!`
   - `set`: `_v => bound_arr(bound_idx) = _v`
4. **Marked Globals & Variables**: `~~::g_theme` / `~~local_var`
   - `get`: `!=> ::g_theme`
   - `set`: `_v => ::g_theme = _v`

Attempting to apply `~~` to a non-lvalue expression (e.g. `~~5`, `~~(a + b)`)
produces compile error `E2108`:
`State binding operator '~~' requires a variable, member access, or indexed element target.`

## Widget Consumption & Types

A component or widget taking a two-way binding accepts a record matching the
shape `(get: (() => T), set: (T => ()))`:

```dva
#type FlagBinding (get: (() => <>), set: (<> => ()))

checkbox: String, FlagBinding => ()
checkbox = label, binding =>
   cur = binding.get()
   cur | print $ label + ": on" | print $ label + ": off"
   binding.set(!cur)
```

## Zero-RTTI & Type Erasure

As with all function values in Dva, lenses are fully erased at compile time to
pairs of `{ fn_ptr, env_ptr }` closures. No runtime type tags or descriptors are
stored. Lenses can be adapted and transformed using bidirectional adapters such as
`map_binding: Binding(A), (A => B), (B => A) => Binding(B)`.
