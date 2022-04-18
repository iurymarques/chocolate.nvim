local c = require("chocolate.colors").get()
local util = require("chocolate.util")

local M = {}

function M.get()
  return {
    ColorColumn = { bg = c.bg2 },
    Conceal = { bg = c.bg4 },
    Cursor = { fg = c.bg2, bg = c.fg1 },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorColumn = { link = "CursorLine" },
    CursorLine = { bg = c.bg2 },

    Directory = { fg = c.blue },
    DiffAdd = { bg = util.blend(c.diff.add, c.bg, 0.2) },
    DiffChange = { bg = util.blend(c.diff.change, c.bg, 0.2) },
    DiffDelete = { fg = util.blend(c.diff.delete, c.bg, 0.3), bg = util.blend(c.diff.delete, c.bg, 0.2) },
    DiffText = { bg = util.blend(c.diff.change, c.bg, 0.4) },
    EndOfBuffer = { fg = c.bg2 },

    ErrorMsg = { fg = c.red },
    VertSplit = { fg = c.bg4 },
    Folded = { fg = c.fg3, bg = c.bg2 },
    FoldColumn = { fg = c.fg3 },
    SignColumn = { fg = c.fg3 },
    SignColumnSB = { link = "SignColumn" },
    Substitute = { fg = c.bg2, bg = c.red },
    LineNr = { fg = c.beige },
    CursorLineNr = { fg = c.yellow, bold = true },
    MatchParen = { fg = c.yellow, bold = true },

    ModeMsg = { fg = c.yellow, bold = true },
    MoreMsg = { fg = c.blue, bold = true },
    NonText = { fg = c.bg4 },

    Normal = { bg = c.bg, fg = c.fg },
    NormalNC = { bg = c.bg, fg = c.fg },
    NormalFloat = { bg = c.bg, fg = c.fg1 },
    FloatBorder = { fg = c.bg4 },

    Pmenu = { fg = c.fg, bg = c.bg },
    PmenuSel = { fg = c.fg1, bg = c.bg4 },
    PmenuSbar = { link = "Pmenu" },
    PmenuThumb = { bg = c.bg4 },
    Question = { link = "MoreMsg" },
    QuickFixLine = { link = "CursorLine" },

    Search = { fg = c.fg1, bg = c.bg4 },
    IncSearch = { fg = c.bg4, bg = c.blue },
    SpecialKey = { link = "NonText" },
    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.yellow },
    SpellLocal = { undercurl = true, sp = c.blue },
    SpellRare = { undercurl = true, sp = c.blue },

    StatusLine = { fg = c.fg2, bg = c.bg1 },
    StatusLineNC = { fg = c.fg3, bg = c.bg1 },

    TabLine = { fg = c.fg3, bg = c.bg2 },
    TabLineFill = { bg = c.bg1 },
    TabLineSel = { fg = c.fg2, bg = c.bg4 },

    Title = { fg = c.blue },
    Visual = { bg = c.bg4 },
    VisualNOS = { link = "Visual" },
    WarningMsg = { fg = c.yellow },
    Whitespace = { fg = c.bg3 },
    WildMenu = { link = "Pmenu" },

    diffAdded       = { fg = c.diff.add },
    diffRemoved     = { fg = c.diff.delete },
    diffChanged     = { fg = c.diff.change },
    diffOldFile     = { fg = c.yellow },
    diffNewFile     = { fg = c.blue },
    diffFile        = { fg = c.orange },
  }
end

return M
