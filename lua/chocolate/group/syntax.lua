local c = require("chocolate.colors").get()
local util = require "chocolate.util"

local M = {}

function M.get()
  return {
    Comment = { fg = util.blend(c.beige, c.bg, 0.6), italic = true },
    Constant = { fg = c.orange },
    String = { fg = c.green },
    Character = { link = "String" },
    Number = { fg = c.orange },
    Float = { link = "Number" },
    Boolean = { link = "Number" },

    Identifier = { fg = c.fg },
    Function = { fg = c.blue },

    PreProc = { fg = c.purple },
    Include = { link = "PreProc" }, -- preprocessor #include
    Define = { link = "PreProc" }, -- preprocessor #define
    Macro = { link = "PreProc" }, -- same as Define
    PreCondit = { link = "PreProc" }, -- preprocessor #if, #else, #endif, etc.

    Statement = { fg = c.red },
    Conditional = { fg = c.red },
    Repeat = { link = "Conditional" },
    Label = { link = "Conditional" },

    Operator = { fg = c.fg, italic = true },
    Keyword = { fg = c.red },
    Exception = { link = "Keyword" },

    Type = { fg = c.yellow },
    StorageClass = { link = "Type" },
    Structure = { link = "Type" },
    Typedef = { link = "Type" },

    Special = { fg = c.blue },
    SpecialChar = { link = "Special" },
    Tag = { link = "Special" },
    Delimiter = { fg = c.fg },
    SpecialComment = { link = "Special" },
    Debug = { link = "Special" },

    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },

    Error = { fg = c.red },
    Todo = { fg = c.bg1, bold = true },

    qfLineNr = { link = "LineNr" },
    qfFileName = { link = "Directory" },
  }
end

return M
