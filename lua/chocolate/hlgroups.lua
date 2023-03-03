local color = require("chocolate.color_util")
local M = {}

local function setup_terminal_colors(c)
  vim.g.terminal_color_0 = c.bg -- black
  vim.g.terminal_color_1 = c.red -- red
  vim.g.terminal_color_2 = c.green -- green
  vim.g.terminal_color_3 = c.yellow -- yellow
  vim.g.terminal_color_4 = c.blue -- blue
  vim.g.terminal_color_5 = c.purple -- magenta
  vim.g.terminal_color_6 = c.aqua -- cyan
  vim.g.terminal_color_7 = c.fg -- white
  vim.g.terminal_color_8 = c.bg -- bright black
  vim.g.terminal_color_9 = c.red -- bright red
  vim.g.terminal_color_10 = c.green -- bright green
  vim.g.terminal_color_11 = c.yellow -- bright yellow
  vim.g.terminal_color_12 = c.blue -- bright blue
  vim.g.terminal_color_13 = c.purple -- bright magenta
  vim.g.terminal_color_14 = c.aqua -- bright cyan
  vim.g.terminal_color_15 = c.fg -- bright white
  vim.g.terminal_color_16 = c.orange -- extended color 1
  vim.g.terminal_color_17 = c.red -- extended color 2
end

function M.setup(c, config)
  config = vim.tbl_extend("force", require("chocolate").config, config or {})

  local hlgroups = {
    -- editor
    ColorColumn = { bg = c.bg2 },
    Conceal = { bg = c.bg4 },
    Cursor = { fg = c.bg2, bg = c.fg1 },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorColumn = { link = "CursorLine" },
    CursorLine = { bg = c.bg2 },
    Directory = { fg = c.blue },
    DiffAdd = { bg = tostring(color(c.bg):blend(c.green, 0.2)), fg = c.green },
    DiffChange = {
      bg = tostring(color(c.bg):blend(c.orange, 0.2)),
      fg = c.orange,
    },
    DiffDelete = { bg = tostring(color(c.bg):blend(c.red, 0.2)), fg = c.red },
    DiffText = { bg = tostring(color(c.diff.change):blend(c.bg, 0.4)) },
    EndOfBuffer = { fg = c.bg2 },
    ErrorMsg = { fg = c.red },
    VertSplit = { fg = c.bg4 },
    Folded = { fg = c.fg3, bg = c.bg2 },
    FoldColumn = { fg = c.fg3 },
    SignColumn = { fg = c.fg3 },
    SignColumnSB = { link = "SignColumn" },
    Substitute = { fg = c.bg2, bg = c.red },
    LineNr = { fg = tostring(color(c.fg):blend(c.bg, 0.8)) },
    CursorLineNr = { fg = c.fg, bold = true },
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
    StatusLine = { fg = c.fg2, bg = c.bg2 },
    StatusLineNC = { fg = c.fg3, bg = c.bg2 },
    TabLine = { fg = c.fg3, bg = c.bg2 },
    TabLineFill = { bg = c.bg1 },
    TabLineSel = { fg = c.fg2, bg = c.bg4 },
    Title = { fg = c.blue },
    Visual = { bg = c.bg4 },
    VisualNOS = { link = "Visual" },
    WarningMsg = { fg = c.yellow },
    Whitespace = { fg = c.bg3 },
    WildMenu = { link = "Pmenu" },
    diffAdded = { fg = c.diff.add },
    diffRemoved = { fg = c.diff.delete },
    diffChanged = { fg = c.diff.change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.blue },
    diffFile = { fg = c.orange },
    -- syntax
    Comment = { fg = tostring(color(c.bg):blend(c.beige, 0.4)), italic = true },
    Constant = { fg = c.orange },
    String = { fg = c.green },
    Character = { link = "String" },
    Number = { fg = c.orange },
    Float = { link = "Number" },
    Boolean = { link = "Number" },
    Identifier = { fg = c.yellow },
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
    Operator = { fg = c.beige },
    Keyword = { fg = c.red },
    Exception = { link = "Keyword" },
    Type = { fg = c.yellow },
    StorageClass = { link = "Type" },
    Structure = { link = "Type" },
    Typedef = { link = "Type" },
    Special = { fg = c.aqua },
    SpecialChar = { link = "Special" },
    Tag = { link = "Special" },
    Delimiter = { fg = c.beige },
    SpecialComment = { link = "Special" },
    Debug = { link = "Special" },
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    Error = { fg = c.red },
    Todo = { fg = c.bg1, bold = true },
    qfLineNr = { link = "LineNr" },
    qfFileName = { link = "Directory" },
    -- diagnostics
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.aqua },
    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },
    DiagnosticVirtualTextError = {
      fg = c.red,
      bg = tostring(color(c.bg):blend(c.red, 0.15)),
      italic = true,
    },
    DiagnosticVirtualTextWarn = {
      fg = c.yellow,
      bg = tostring(color(c.bg):blend(c.yellow, 0.15)),
      italic = true,
    },
    DiagnosticVirtualTextInfo = {
      fg = c.blue,
      bg = tostring(color(c.bg):blend(c.blue, 0.15)),
      italic = true,
    },
    DiagnosticVirtualTextHint = {
      fg = c.aqua,
      bg = tostring(color(c.bg):blend(c.aqua, 0.15)),
      italic = true,
    },
    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.aqua },
    -- semantic tokens
    ["@variable"] = { fg = c.fg },
    ["@global"] = { fg = c.orange },
    ["@constructor"] = { fg = c.blue },
    ["@modifier"] = { fg = c.red },
    ["@type.qualifier"] = { fg = c.red },
    ["@type.builtin"] = { fg = c.aqua },
    ["@keyword.return"] = { fg = c.red, bold = true },
    ["@static"] = { italic = true },
    ["@parameter"] = { italic = true },
    -- telescope
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeResultsClass = { link = "Type" },
    TelescopeResultsStruct = { link = "Type" },
    TelescopeResultsVariable = { link = "Variable" },
    -- GitSigns
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.orange },
    GitSignsDelete = { fg = c.red },
    GitSignsDeleteLn = { bg = c.red },
    -- Treesitter Context
    TreesitterContext = { bg = c.bg2 },
    TreesitterContextLineNumber = { bg = c.bg2, fg = c.bg2 },
  }

  for hl, specs in pairs(config.overrides) do
    if hlgroups[hl] and not vim.tbl_isempty(specs) then
      hlgroups[hl].link = nil
    end
    hlgroups[hl] = vim.tbl_extend("force", hlgroups[hl] or {}, specs)
  end

  setup_terminal_colors(c)
  return hlgroups
end

return M
