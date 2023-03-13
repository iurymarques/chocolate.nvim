local M = {}

--- @param palette ColorPalette
--- @param config? Config
function M.setup(palette, config)
  return {
    -- GitSigns
    GitSignsAdd = { fg = palette.green, bg = palette.bg2 },
    GitSignsChange = { fg = palette.orange, bg = palette.bg2 },
    GitSignsDelete = { fg = palette.red, bg = palette.bg2 },
    GitSignsUntracked = { fg = palette.red, bg = palette.bg2 },
    GitSignsDeleteLn = { fg = palette.red, bg = palette.bg2 },
    -- Treesitter Context
    TreesitterContext = { bg = palette.bg2 },
    TreesitterContextLineNumber = { bg = palette.bg2, fg = palette.bg2 },
    -- Telescope
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeResultsClass = { link = "Structure" },
    TelescopeResultsStruct = { link = "Structure" },
    TelescopeResultsField = { link = "@field" },
    TelescopeResultsMethod = { link = "Function" },
    TelescopeResultsVariable = { link = "@variable" },
    -- Cmp
    CmpDocumentation = { link = "NormalFloat" },
    CmpDocumentationBorder = { link = "FloatBorder" },
    CmpCompletion = { link = "Pmenu" },
    CmpCompletionSel = { fg = "NONE", bg = palette.bg4 },
    CmpCompletionBorder = { fg = palette.bg4, bg = palette.bg4 },
    CmpCompletionThumb = { link = "PmenuThumb" },
    CmpCompletionSbar = { link = "PmenuSbar" },
    CmpItemAbbr = { fg = palette.fg2, bg = "NONE" },
    CmpItemAbbrDeprecated = { link = "Comment", strikethrough = true },
    CmpItemAbbrMatch = { fg = palette.blue },
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
    -- CmpItemMenu = { fg = palette.blue, bg = "NONE" },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindConstructor = { link = "TSConstructor" },
    CmpItemKindClass = { link = "Type" },
    CmpItemKindInterface = { link = "Type" },
    CmpItemKindStruct = { link = "Type" },
    CmpItemKindProperty = { link = "TSProperty" },
    CmpItemKindField = { link = "TSField" },
    CmpItemKindEnum = { link = "Identifier" },
    CmpItemKindSnippet = { link = "Special" },
    CmpItemKindText = { link = "TSText" },
    CmpItemKindModule = { link = "TSInclude" },
    CmpItemKindFile = { link = "Directory" },
    CmpItemKindFolder = { link = "Directory" },
    CmpItemKindKeyword = { link = "TSKeyword" },
    CmpItemKindTypeParameter = { link = "Identifier" },
    CmpItemKindConstant = { link = "Constant" },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindReference = { link = "TSParameterReference" },
    CmpItemKindEnumMember = { link = "TSField" },
    CmpItemKindValue = { link = "String" },
    -- CmpItemKindUnit = {},
    -- CmpItemKindEvent = {},
    -- CmpItemKindColor = {},

    CmpItemKindCopilot = { link = "String" },
  }
end

return M
