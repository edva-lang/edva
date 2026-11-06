# `std/pug`

`std/pug.dva` renders indentation-driven Pug-style templates to HTML strings.
It depends only on `std/str` and `std/json`; it does not perform file I/O or
create HTTP responses.

- `render(source)` renders a template without a context.
- `render_with(source, value)` renders with a `json::Value` context.
- `render_json(source, json_text)` parses JSON and renders with that context,
  returning `< String | PugError >` on invalid JSON.

`PugError` is the renderer's local error record, with `code` and `message` fields. Server
frameworks can map it to their own response error type. Edvin keeps its file
loading and `HttpError` response helpers in its own facade.

Supported syntax includes HTML5 doctype and void tags, tag/id/class shorthand,
attributes, escaped and unescaped buffered expressions, text interpolation,
comments, nested blocks, conditional branches, and `each` iteration. Use
unescaped output only for trusted HTML.
