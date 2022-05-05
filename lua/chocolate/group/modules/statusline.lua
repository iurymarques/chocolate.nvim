local c = require("chocolate.colors").get()
local util = require("chocolate.util")

local M = {}

function M.get()
  return {
    Statusline = { fg = c.beige, bg = c.bg2 },
    StatuslineMode = { fg = util.blend(c.beige, c.bg, 0.6), bg = c.bg2 },
    StatuslineBranch = { fg = util.blend(c.beige, c.bg, 0.6), bg = c.bg2, italic = true },
    StatuslineFiletype = { link = "StatuslineBranch" },
    StatuslineDap = { fg = util.blend(c.yellow, c.bg, 0.6), bg = c.bg2 },
    StatuslineDiagnosticWarn = { fg = c.yellow, bg = c.bg2 },
    StatuslineDiagnosticError = { fg = c.red, bg = c.bg2 },
    StatuslineDiagnosticOk = { fg = c.green, bg = c.bg2 },
  }
end

return M
