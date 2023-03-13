local M = {}

--- @param palette ColorPalette
--- @param config Config
function M.setup(palette, config)
  return {
    -- Misc {{{
    -- @comment (Comment)                          ; line and block comments
    -- @error                                      ; syntax/parser errors
    -- @none                                       ; completely disable the highlight
    -- @preproc (PreProc)                          ; various preprocessor directives & shebangs
    -- @define (Define)                            ; preprocessor definition directives
    -- @operator (Operator)                        ; symbolic operators (e.g. `+` / `*`)
    ["@operator"] = { link = "Operator" },
    -- Punctuation (Delimiter)
    -- @punctuation.delimiter                      ; delimiters (e.g. ` ; ` / `.` / `,`)
    ["@punctuation.delimiter"] = { fg = palette.beige },
    -- @punctuation.bracket                        ; brackets (e.g. `()` / `{}` / `[]`)
    ["@punctuation.bracket"] = { fg = palette.beige },
    -- @punctuation.special                        ; special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special"] = { fg = palette.beige },
    -- }}}

    -- Literals {{{
    -- @string (String)                            ; string literals
    -- @string.regex                               ; regular expressions
    ["@string.regex"] = { fg = palette.orange },
    -- @string.escape (SpecialChar)                ; escape sequences
    ["@string.escape"] = { fg = palette.orange, bold = true },
    -- @string.special (SpecialChar)               ; other special strings (e.g. dates)

    -- @character (Character)                      ; character literals
    -- @character.special (Special)                ; special characters (e.g. wildcards)

    -- @boolean (Boolean)                          ; boolean literals
    -- @number (Number)                            ; numeric literals
    -- @float (Float)                              ; floating-point number literals
    -- }}}

    -- Functions {{{
    -- @function (Function)                        ; function definitions
    -- @function.builtin (Special)                 ; built-in functions
    -- @function.call                              ; function calls
    -- @function.macro (Macro)                     ; preprocessor macros

    -- @method (Function)                          ; method definitions
    -- @method.call                                ; method calls

    -- @constructor (Special)                      ; constructor calls and definitions
    ["@constructor.lua"] = { fg = palette.aqua },
    ["@constructor"] = { fg = palette.aqua },
    -- @parameter (Identifier)                     ; parameters of a function
    ["@parameter"] = { fg = palette.fg2 },
    -- }}}

    -- Keywords (Keyword) {{{
    -- @keyword                                    ; various keywords
    -- @keyword.function                           ; keywords that define a function (e.g. `func` in Go, `def` in Python)
    -- @keyword.operator                           ; operators that are English words (e.g. `and` / `or`)
    ["@keyword.operator"] = { fg = palette.purple, bold = true },
    -- @keyword.return                             ; keywords like `return` and `yield`
    ["@keyword.return"] = { fg = palette.red, bold = true },
    ["@keyword.luap"] = { link = "@string.regex" },
    -- @conditional (Conditional -> Statement)     ; keywords related to conditionals (e.g. `if` / `else`)
    -- @conditional.ternary                        ; Ternary operator: condition ? 1 : 2
    -- @repeat (Repeat)                            ; keywords related to loops (e.g. `for` / `while`)
    -- @debug (Debug)                              ; keywords related to debugging
    -- @label (Label)                              ; GOTO and other labels (e.g. `label:` in C)
    -- @include (Include)                          ; keywords for including modules (e.g. `import` / `from` in Python)
    -- @exception (Exception)                      ; keywords related to exceptions (e.g. `throw` / `catch`)
    ["@exception"] = { fg = palette.red },
    -- }}}

    -- Types {{{
    -- @type (Type)                                ; type or class definitions and annotations
    -- @type.builtin                               ; built-in types
    -- @type.definition (TypeDef)                  ; type definitions (e.g. `typedef` in C)
    -- @type.qualifier                             ; type qualifiers (e.g. `const`)
    ["@type.qualifier"] = { fg = palette.purple },

    -- @structure (Structure)

    -- @storageclass (StorageClass)                ; modifiers that affect storage in memory or life-time
    -- @attribute                                  ; attribute annotations (e.g. Python decorators)
    ["@attribute"] = { link = "Constant" },
    -- @field (Identifier)                         ; object and struct fields
    -- @property (Identifier)                      ; similar to `@field`
    -- }}}

    --Identifiers {{{
    -- @variable (Identifier)                      ; various variable names
    ["@variable"] = { fg = palette.fg2 },
    -- @variable.builtin                           ; built-in variable names (e.g. `this`)
    ["@variable.builtin"] = { fg = palette.red, italic = true },
    -- @constant (Constant)                        ; constant identifiers
    -- @constant.builtin (Special)                 ; built-in constant values
    -- @constant.macro (Define -> PreProc)         ; constants defined by the preprocessor

    -- @namespace (Identifier)                     ; modules or namespaces
    ["@namespace"] = { fg = palette.fg2 },
    -- @symbol                                     ; symbols or atoms
    ["@symbol"] = { fg = palette.yellow },
    -- }}}

    -- Text {{{
    -- @text                                       ; non-structured text
    -- @text.strong                                ; bold text
    ["@text.strong"] = { bold = true },
    -- @text.emphasis                              ; text with emphasis
    ["@text.emphasis"] = { italic = true },
    -- @text.underline (Underlined)                ; underlined text
    -- @text.strike                                ; strikethrough text
    -- @text.title (Title)                         ; text that is part of a title
    ["@text.title"] = { link = "Function" },
    -- @text.literal (Comment)                     ; literal or verbatim text (e.g., inline code)
    ["@text.literal"] = { link = "String" },
    -- @text.quote                                 ; text quotations
    -- @text.uri (Underlined)                      ; URIs (e.g. hyperlinks)
    -- @text.math                                  ; math environments (e.g. `$ ... $` in LaTeX)
    -- @text.environment                           ; text environments of markup languages
    -- @text.environment.name                      ; text indicating the type of an environment
    -- @text.reference (Identifier)                ; text references, footnotes, citations, etc.

    -- @text.todo (Todo)                           ; todo notes
    -- @text.note                                  ; info notes
    -- @text.warning                               ; warning notes
    ["@text.warning"] = {
      fg = palette.bg,
      bg = palette.yellow,
      bold = true,
    },
    -- @text.danger                                ; danger/error notes
    ["@text.danger"] = { fg = palette.bg, bg = palette.red, bold = true },
    -- @text.diff.add                              ; added text (for diff files)
    -- @text.diff.delete                           ; deleted text (for diff files)
    -- }}}

    -- Tags (Tag) {{{
    -- @tag                                        ; XML tag names
    -- @tag.attribute                              ; XML tag attributes
    ["@tag.attribute"] = { fg = palette.yellow },
    -- @tag.delimiter                              ; XML tag delimiter
    ["@tag.delimiter"] = { fg = palette.beige },
    -- }}}
  }
end

return M
