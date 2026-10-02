-- doc/page-meta.lua
-- Pandoc filter for Edva documentation:
-- 1. Wraps all tables in <div class="table-wrapper"> for responsive, non-overlapping horizontal scrolling.
-- 2. Reads structured 'meta' frontmatter (audience, status, audited, evidence) and moves it into #quarto-margin-sidebar.

function Table(el)
  return pandoc.Div({el}, {class = 'table-wrapper'})
end

local function inlines_to_html(inlines)
  if not inlines then return "" end
  if type(inlines) == "string" then return inlines end
  local doc = pandoc.Pandoc({pandoc.Plain(inlines)})
  local html = pandoc.write(doc, "html")
  return (html:gsub("%s+$", ""))
end

function Pandoc(doc)
  local meta = doc.meta.meta
  if meta then
    local audience = inlines_to_html(meta.audience)
    local status = inlines_to_html(meta.status)
    local audited = inlines_to_html(meta.audited)
    local evidence = inlines_to_html(meta.evidence)

    if audited ~= "" and not audited:find("<code") then
      audited = string.format("<code>%s</code>", audited)
    end

    local rows = {}
    if audience ~= "" then
      table.insert(rows, string.format("<strong>Audience:</strong> %s", audience))
    end
    if status ~= "" then
      table.insert(rows, string.format("<strong>Status:</strong> %s", status))
    end
    if audited ~= "" then
      table.insert(rows, string.format("<strong>Audited:</strong> %s", audited))
    end
    if evidence ~= "" then
      table.insert(rows, string.format("<strong>Evidence:</strong> %s", evidence))
    end

    if #rows > 0 then
      local inner_html = table.concat(rows, "<br>\n")
      local html = string.format([[
<div class="page-meta page-meta-source" style="display:none;">
%s
</div>
<script>
document.addEventListener("DOMContentLoaded", function() {
  var meta = document.querySelector(".page-meta-source");
  var margin = document.getElementById("quarto-margin-sidebar");
  var main = document.querySelector("main.content");
  if (!meta) return;
  function placeMeta() {
    if (margin && window.getComputedStyle(margin).display !== "none") {
      margin.appendChild(meta);
    } else if (main) {
      main.appendChild(meta);
    }
    meta.style.display = "";
    meta.classList.remove("page-meta-source");
  }
  placeMeta();
  window.addEventListener("resize", placeMeta);
});
</script>
]], inner_html)
      table.insert(doc.blocks, pandoc.RawBlock("html", html))
    end
  end
  return doc
end
