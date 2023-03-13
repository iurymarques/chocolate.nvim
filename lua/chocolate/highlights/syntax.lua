local c = require("chocolate.lib.color")

local M = {}

--- @param palette ColorPalette
--- @param config Config
function M.setup(palette, config)
  return {
    -- *Comment	any comment
    Comment = {
      fg = c(palette.bg):blend(palette.beige, 0.4):to_hex(),
      italic = true,
    },
    -- *Constant	any constant
    Constant = { fg = palette.orange },
    --  String		a string constant: "this is a string"
    String = { fg = palette.green },
    --  Character	a character constant: 'c', '\n'
    Character = { link = "String" },
    --  Number		a number constant: 234, 0xff
    Number = { fg = palette.orange },
    --  Boolean	a boolean constant: TRUE, false
    Boolean = { fg = palette.orange, bold = true },
    --  Float		a floating point constant: 2.3e10
    Float = { link = "Number" },
    -- *Identifier	any variable name
    Identifier = { fg = palette.yellow },
    --  Function	function name (also: methods for classes)
    Function = { fg = palette.blue }, -- *Statement	any statement
    Statement = { fg = palette.purple },
    --  Conditional	if, then, else, endif, switch, etc.
    --  Repeat		for, do, while, etc.
    --  Label		case, default, etc.
    --  Operator	"sizeof", "+", "*", etc.
    Operator = { fg = palette.beige },
    --  Keyword	any other keyword
    Keyword = { fg = palette.purple }, --  Exception	try, catch, throw
    Exception = { fg = palette.red },
    -- *PreProc	generic Preprocessor
    PreProc = { fg = palette.red },
    --  Include	preprocessor #include
    --  Define		preprocessor #define
    --  Macro		same as Define
    --  PreCondit	preprocessor #if, #else, #endif, etc.

    -- *Type		int, long, char, etc.
    Type = { fg = palette.aqua },
    --  StorageClass	static, register, volatile, etc.
    --  Structure	struct, union, enum, etc.
    --  Typedef	A typedef

    -- *Special	any special symbol
    Special = { fg = palette.aqua },
    --  SpecialChar	special character in a constant
    --  Tag		you can use CTRL-] on this
    --  Delimiter	character that needs attention
    Delimiter = { fg = palette.beige },
    --  SpecialComment	special things inside a comment
    --  Debug		debugging statements

    -- *Underlined	text that stands out, HTML links
    Underlined = { underline = true },
    Bold = { bold = true },
    Italic = { italic = true },
    -- *Ignore		left blank, hidden  |hl-Ignore|
    Ignore = { link = "NonText" },
    -- *Error		any erroneous construct
    Error = { fg = palette.red },
    -- *Todo		anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Todo = { fg = palette.bg, bg = palette.aqua, bold = true },
    qfLineNr = { link = "lineNr" },
    qfFileName = { link = "Directory" },
    -- htmlH1 = {},
    -- htmlH2 = {},

    -- mkdHeading = {},
    -- mkdCode = {},
    -- mkdCodeDelimiter = {},
    -- mkdCodeStart = {},
    -- mkdCodeEnd = {},
    -- mkdLink = {},

    -- markdownHeadingDelimiter = {},
    markdownCode = { fg = palette.green },
    markdownCodeBlock = { fg = palette.green },
    markdownEscape = { fg = "NONE" },
    -- markdownH1 = {},
    -- markdownH2 = {},
    -- markdownLinkText = {},
  }
end

return M
