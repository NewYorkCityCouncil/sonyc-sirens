function Note(el)
local text = pandoc.utils.stringify(el.content)

return pandoc.Span({
  pandoc.RawInline(
    "html",
    '<sup class="footnote-hover" title="' ..
    text ..
    '">†</sup>'
  )
})
end