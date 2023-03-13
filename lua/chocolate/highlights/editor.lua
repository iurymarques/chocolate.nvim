local c = require("chocolate.lib.color")

local M = {}

--- @param palette ColorPalette
--- @param config Config
function M.setup(palette, config)
  return {
    -- ColorColumn	Used for the columns set with 'colorcolumn'.
    ColorColumn = { bg = palette.bg2 },
    -- Conceal		Placeholder characters substituted for concealed text (see 'conceallevel').
    Conceal = { fg = palette.bg4, bold = true },
    -- CurSearch	Used for highlighting a search pattern under the cursor (see 'hlsearch').
    CurSearch = { fg = palette.fg, bg = palette.blue, bold = true },
    -- Cursor		Character under the cursor.
    Cursor = { fg = palette.bg, bg = palette.fg },
    -- lCursor		Character under the cursor when |language-mapping| is used (see 'guicursor').
    lCursor = { link = "Cursor" },
    -- CursorIM	Like Cursor, but used when in IME mode.
    CursorIM = { link = "Cursor" },
    -- CursorColumn	Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorColumn = { link = "CursorLine" },
    -- CursorLine	Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLine = { bg = palette.bg2 },
    -- Directory	Directory names (and other special names in listings).
    Directory = { fg = palette.aqua, bold = true },
    -- DiffAdd		Diff mode: Added line. |diff.txt|
    DiffAdd = { fg = palette.diff.add },
    -- DiffChange	Diff mode: Changed line. |diff.txt|
    DiffChange = { fg = palette.diff.change },
    -- DiffDelete	Diff mode: Deleted line. |diff.txt|
    DiffDelete = { fg = palette.diff.delete },
    -- DiffText	Diff mode: Changed text within a changed line. |diff.txt|
    -- DiffText = { fg = palette.diff.text },
    -- EndOfBuffer	Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    EndOfBuffer = { fg = palette.bg },
    -- TermCursor	Cursor in a focused terminal.
    -- TermCursorNC	Cursor in an unfocused terminal.
    -- ErrorMsg	Error messages on the command line.
    ErrorMsg = { fg = palette.red },
    -- WinSeparator	Separators between window splits.
    WinSeparator = {
      fg = palette.bg3,
    },
    VertSplit = { link = "WinSeparator" },
    -- Folded		Line used for closed folds.
    Folded = { fg = palette.fg3 },
    -- FoldColumn	'foldcolumn'
    FoldColumn = { fg = palette.fg3 },
    -- SignColumn	Column where |signs| are displayed.
    SignColumn = { bg = palette.bg2 },
    -- IncSearch	'incsearch' highlighting; also used for the text replaced with ":s///c".
    IncSearch = { fg = palette.bg4, bg = palette.blue },
    -- Substitute	|:substitute| replacement text highlighting.
    Substitute = { fg = palette.bg2, bg = palette.red },
    -- LineNr		Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNr = {
      fg = c(palette.fg):blend(palette.bg, 0.8):to_hex(),
      bg = palette.bg2,
    },
    -- LineNrAbove	Line number for when the 'relativenumber' option is set, above the cursor line.
    -- LineNrBelow	Line number for when the 'relativenumber' option is set, below the cursor line.
    -- CursorLineNr	Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
    CursorLineNr = { fg = palette.fg, bg = palette.bg2, bold = true },
    -- CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
    -- CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
    -- MatchParen	Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    MatchParen = { fg = palette.yellow, bold = true },
    -- ModeMsg		'showmode' message (e.g., "-- INSERT --").
    ModeMsg = { fg = palette.yellow, bold = true },
    -- MsgArea		Area for messages and cmdline.
    MsgArea = { bg = palette.bg },
    -- MsgSeparator	Separator for scrolled messages |msgsep|.
    MsgSeparator = {
      bg = palette.bg,
    },
    -- MoreMsg		|more-prompt|
    MoreMsg = { fg = palette.blue, bold = true },
    -- NonText		'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    NonText = { fg = palette.bg4 },
    -- Normal		Normal text.
    Normal = {
      fg = palette.fg,
      bg = not config.transparent and palette.bg or "NONE",
    },
    -- NormalFloat	Normal text in floating windows.
    NormalFloat = { fg = palette.fg1, bg = palette.bg },
    FloatBorder = {
      fg = palette.bg3,
      bg = palette.bg,
    },
    -- NormalNC	Normal text in non-current windows.
    NormalNC = { link = "Normal" },
    -- Pmenu		Popup menu: Normal item.
    Pmenu = { fg = palette.fg, bg = c(palette.bg):blend("#000", 0.3):to_hex() },
    -- PmenuSel	Popup menu: Selected item.
    PmenuSel = { fg = palette.fg1, bg = palette.bg4 },
    -- PmenuSbar	Popup menu: Scrollbar.
    PmenuSbar = { link = "Pmenu" },
    -- PmenuThumb	Popup menu: Thumb of the scrollbar.
    PmenuThumb = { bg = palette.bg3 },
    -- Question	|hit-enter| prompt and yes/no questions.
    Question = { link = "MoreMsg" },
    -- QuickFixLine	Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    QuickFixLine = { link = "CursorLine" },
    -- Search		Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    Search = { fg = palette.fg1, bg = palette.bg4 },
    -- SpecialKey	Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpecialKey = { link = "NonText" },
    -- SpellBad	Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellBad = { undercurl = true, sp = palette.red },
    -- SpellCap	Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellCap = { undercurl = true, sp = palette.yellow },
    -- SpellLocal	Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { undercurl = true, sp = palette.blue },
    -- SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    SpellRare = { undercurl = true, sp = palette.blue },
    -- StatusLine	Status line of current window.
    StatusLine = { fg = palette.fg2, bg = palette.bg2 },
    -- StatusLineNC	Status lines of not-current windows. Note: If this is equal to "StatusLine", Vim will use "^^^" in the status line of the current window.
    StatusLineNC = { fg = palette.fg3, bg = palette.bg2 },
    -- TabLine		Tab pages line, not active tab page label.
    TabLine = { fg = palette.fg3, bg = palette.bg2 },
    -- TabLineFill	Tab pages line, where there are no labels.
    TabLineFill = { bg = palette.bg1 },
    -- TabLineSel	Tab pages line, active tab page label.
    TabLineSel = { fg = palette.fg2, bg = palette.bg4 },
    -- Title		Titles for output from ":set all", ":autocmd" etc.
    Title = { fg = palette.blue, bold = true },
    -- Visual		Visual mode selection.
    Visual = { bg = palette.bg4 },
    -- VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
    VisualNOS = { link = "Visual" },
    -- WarningMsg	Warning messages.
    WarningMsg = { fg = palette.yellow },
    -- Whitespace	"nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
    Whitespace = { fg = palette.bg3 },
    -- WildMenu	Current match in 'wildmenu' completion.
    WildMenu = { link = "Pmenu" },
    -- WinBar		Window bar of current window.
    Winbar = { fg = palette.bg3, bg = "NONE" },
    -- WinBarNC	Window bar of not-current windows.
    WinbarNC = { fg = palette.bg3, bg = "NONE" },
    -- diagnostic
    DiagnosticError = { fg = palette.red },
    DiagnosticWarn = { fg = palette.yellow },
    DiagnosticInfo = { fg = palette.blue },
    DiagnosticHint = { fg = palette.aqua },
    DiagnosticSignError = { link = "DiagnosticError" },
    DiagnosticSignWarn = { link = "DiagnosticWarn" },
    DiagnosticSignInfo = { link = "DiagnosticInfo" },
    DiagnosticSignHint = { link = "DiagnosticHint" },
    DiagnosticVirtualTextError = {
      fg = palette.red,
      bg = c(palette.bg):blend(palette.red, 0.15):to_hex(),
      italic = true,
    },
    DiagnosticVirtualTextWarn = {
      fg = palette.yellow,
      bg = c(palette.bg):blend(palette.yellow, 0.15):to_hex(),
      italic = true,
    },
    DiagnosticVirtualTextInfo = {
      fg = palette.blue,
      bg = c(palette.bg):blend(palette.blue, 0.15):to_hex(),
      italic = true,
    },
    DiagnosticVirtualTextHint = {
      fg = palette.aqua,
      bg = c(palette.bg):blend(palette.aqua, 0.15):to_hex(),
      italic = true,
    },
    DiagnosticUnderlineError = { undercurl = true, sp = palette.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = palette.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = palette.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = palette.aqua },
    -- vcs
    diffAdded = { fg = palette.diff.add },
    diffRemoved = { fg = palette.diff.delete },
    diffChanged = { fg = palette.diff.change },
    diffOldFile = { fg = palette.yellow },
    diffNewFile = { fg = palette.blue },
    diffFile = { fg = palette.orange },
  }
end

return M
