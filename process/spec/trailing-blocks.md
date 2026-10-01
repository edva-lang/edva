# Trailing Block & Block-Feed Operator (`$:`)

This specification documents the trailing block and block-feed operator (`$:`),
introduced in Issue #34.

---

## 1. Overview & Motivation

Declarative user interface programming, widget tree construction, and multiline
event callback bindings often require passing nested child lists and functions
to container calls. Without dedicated trailing block syntax, expressing layout
trees required deep parentheses nesting and comma separators:

```dva
// Without $:: deeply nested parentheses and mandatory commas
vbox(12, (
   label("Username"),
   text_input(state.username),
   hbox(8, (
      button("Cancel"),
      button("Submit") $> on_click(_ => submit())
   ))
))
```

The block-feed operator (`$:`) eliminates closing parentheses cascades and
per-line commas:

```dva
// With $:: clean, indented declarative tree
vbox(12) $:
   label("Username")
   text_input(state.username)
   hbox(8) $:
      button("Cancel")
      button("Submit") $> on_click(_ => submit())
```

---

## 2. Syntax & Precedence

`$:` is a binary operator sitting at the **apply tier** (Tier 6, LBP 30,
RBP 30, right-associative), sharing precedence with infix apply (`$`):

| Operator | Tier | Associativity | LHS | RHS |
|---|---|---|---|---|
| `$:` | Apply (30) | Right | Call, function, or expression | Indented block or inline expression |

Because `$:` sits below the feed operator (`$>`), feed pipelines chain directly
into trailing blocks:
```dva
button("Submit") $> on_click $: _ =>
   submit()
```
parses as `(button("Submit") $> on_click) $: (_ => ...)`.

---

## 3. Desugaring & Semantics

The RHS of `$:` is parsed as a block (`parse_block`). Depending on the shape
of the RHS, `$:` desugars as follows:

### 3.1 Indented Statements (Children Records)

When followed by an indented block of statements:
```dva
vbox(spacing: 12) $:
   child1
   child2
   child3
```
Each statement in the block becomes a positional field in a record literal:
`(child1, child2, child3)`.

The record is applied to the LHS via multi-argument apply:
```dva
vbox(spacing: 12) $ (child1, child2, child3)
```
which flattens to:
```dva
vbox(spacing: 12, (child1, child2, child3))
```

If the LHS is a bare function name (no previous arguments), it passes the record
as the sole argument:
```dva
container $:
   child1
   child2
// Desugars to: container((child1, child2))
```

### 3.2 Single Children (1-Element Records)

A single child inside an indented block or inline after `$:` is consistently
wrapped into a 1-element record:
```dva
vbox(12) $:
   "only_child"
// Desugars to: vbox(12, ("only_child",))
```
This guarantees container functions expecting record parameters `T` match
consistently regardless of the number of children.

### 3.3 Trailing Closures & Event Callbacks

When the RHS is a single function (`Fn`, declared with `_ => ...` or `!=> ...`),
the function value is passed **directly** as the trailing argument rather than
wrapped in a record:
```dva
button("Submit") $> on_click $: _ => "handled"
// Desugars to: on_click(button("Submit"), _ => "handled")
```
and with indented lambda bodies:
```dva
task $: !=>
   do_setup()
   run_worker()
// Desugars to: task(!=> ...)
```

### 3.4 Named Configuration Fields

If statements in an indented block are assignments (`name = expr`), they become
named fields in the generated record:
```dva
make_config $:
   color = 0xFF00
   width = 320
// Desugars to: make_config((color = 0xFF00, width = 320))
```

---

## 4. Nested Containers

Trailing blocks nest to arbitrary depths. Indentation boundaries (`Indent` and
`Dedent`) delimit each nested container:

```dva
window("Main") $:
   vbox(16) $:
      label("Settings")
      hbox(8) $:
         checkbox("Audio", ~state.audio)
         checkbox("Video", ~state.video)
      button("Save") $> on_click(_ => save())
```

Each child block evaluates independently and splices into its parent container's
child record.
