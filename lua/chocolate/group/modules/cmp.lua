local c = require("chocolate.colors").get()
local util = require("chocolate.util")

local M = {}

function M.get()
  return {
    CmpDocumentation         = { fg = c.fg, bg = c.bg },
    CmpDocumentationBorder   = { fg = c.bg4, bg = c.bg },

    CmpItemAbbr              = { fg = c.fg1, },
    CmpItemAbbrDeprecated    = { fg = util.darken(c.beige, 0.6, c.bg), strikethrough = true },
    CmpItemAbbrMatch         = { fg = c.blue, },
    CmpItemAbbrMatchFuzzy    = { fg = c.blue, },

    CmpItemKindDefault       = { fg = c.fg2, },
    CmpItemMenu              = { link = "Comment" },

    CmpItemKindKeyword       = { link = "Identifier" },

    CmpItemKindVariable      = { link = "TSVariable" },
    CmpItemKindConstant      = { link = "TSConstant" },
    CmpItemKindReference     = { link = "Keyword" },
    CmpItemKindValue         = { link = "Keyword" },

    CmpItemKindFunction      = { link = "Function" },
    CmpItemKindMethod        = { link = "Function" },
    CmpItemKindConstructor   = { link = "Function" },

    CmpItemKindInterface     = { link = "Constant" },
    CmpItemKindEvent         = { link = "Constant" },
    CmpItemKindEnum          = { link = "Constant" },
    CmpItemKindUnit          = { link = "Constant" },

    CmpItemKindClass         = { link = "Type" },
    CmpItemKindStruct        = { link = "Type" },

    CmpItemKindModule        = { link = "TSNamespace" },

    CmpItemKindProperty      = { link = "TSProperty" },
    CmpItemKindField         = { link = "TSField" },
    CmpItemKindTypeParameter = { link = "TSField" },
    CmpItemKindEnumMember    = { link = "TSField" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = c.fg2 },
  }
end

return M
