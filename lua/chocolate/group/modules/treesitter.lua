local c = require("chocolate.colors").get()

local M = {}

function M.get()
  return {
    TSAttribute = { link = "Constant" },
    -- TSBoolean            = {}, -- Boolean literals: `True` and `False` in Python.
    -- TSCharacter          = {}, -- Character literals: `'a'` in C.
    -- TSComment            = {}, -- Line comments and block comments.
    -- TSConditional        = {}, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    -- TSConstant           = {}, -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python.
    TSConstBuiltin = { fg = c.orange },
    -- TSConstMacro         = {}, -- Constants defined by macros: `NULL` in C.
    TSConstructor = { fg = c.blue }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSError = { fg = c.red }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          = {}, -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField = { fg = c.purple }, -- Object and struct fields.
    -- TSFloat              = {}, -- Floating-point number literals.
    -- TSFunction           = {}, -- Function calls and definitions.
    TSFuncBuiltin = { fg = c.blue }, -- Built-in functions: `print` in Lua.
    TSFuncMacro = { fg = c.purple }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            = { fg = c.red }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    -- TSKeyword            = {}, -- Keywords that don't fit into other categories.
    TSKeywordFunction=  { fg = c.red }, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator = { fg = c.red, bold = true }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      = {}, -- Keywords like `return` and `yield`.
    -- TSLabel              = {}, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             = {}, -- Method calls and definitions.
    TSNamespace = { fg = c.aqua }, -- Identifiers referring to modules and namespaces.
    -- TSNone               = {}, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    -- TSNumber             = {}, -- Numeric literals that don't fit into other categories.
    TSOperator = { fg = c.fg3, italic = false }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          = { fg = c.green }, -- Parameters of a function.
    -- TSParameterReference = {}, -- References to parameters of a function.
    TSProperty           = { link = "TSField" }, -- Same as `TSField`.
    TSPunctDelimiter     = { fg = c.fg3 }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket       = { fg = c.fg3 }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial       = { fg = c.fg3 }, -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             = {}, -- Keywords related to loops: `for`, `while`, etc.
    -- TSString             = {}, -- String literals.
    TSStringRegex        = { fg = c.orange }, -- Regular expression literals.
    TSStringEscape       = { fg = c.orange, bold = true }, -- Escape characters within a string: `\n`, `\t`, etc.
    -- TSStringSpecial      = {}, -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             = {}, -- Identifiers referring to symbols or atoms.
    -- TSTag                = {}, -- Tags like HTML tag names.
    -- TSTagAttribute       = {}, -- HTML tag attributes.
    -- TSTagDelimiter       = {}, -- Tag delimiters like `<` `>` `/`.
    -- TSText               = {}, -- Non-structured text. Like text in a markup language.
    -- TSStrong             = {}, -- Text to be represented in bold.
    -- TSEmphasis           = {}, -- Text to be represented with emphasis.
    -- TSUnderline          = {}, -- Text to be represented with an underline.
    -- TSStrike             = {}, -- Strikethrough text.
    -- TSTitle              = {}, -- Text that is part of a title.
    -- TSLiteral            = {}, -- Literal or verbatim text.
    TSURI                = { fg = c.aqua, bold = true }, -- URIs like hyperlinks or email addresses.
    -- TSMath               = {}, -- Math environments like LaTeX's `$ ... $`
    TSTextReference      = { fg = c.red }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        = {}, -- Text environments of markup languages.
    -- TSEnvironmentName    = {}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote               = { fg = c.blue }, -- Text representation of an informational note.
    TSWarning            = { fg = c.yellow }, -- Text representation of a warning note.
    TSDanger             = { fg = c.red }, -- Text representation of a danger note.
    -- TSType               = {}, -- Type (and class) definitions and annotations.
    TSTypeBuiltin        = { fg = c.red }, -- Built-in types: `i32` in Rust.
    TSVariable           = { fg = c.fg }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin    = { fg = c.orange }, -- Variable names defined by the language: `this` or `self` in Javascript.

    -- Languages ---------------------------------------------------------------
    -- Rust
    rustTSField          = { fg = c.fg2 },
  }
end

return M
