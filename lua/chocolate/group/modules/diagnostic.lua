local c = require("chocolate.colors").get()
local util = require("chocolate.util")

local M = {}

function M.get()
  return {
    DiagnosticError = { fg = c.red },
    DiagnosticWarn  = { fg = c.yellow },
    DiagnosticInfo  = { fg = c.blue },
    DiagnosticHint  = { fg = c.aqua },

    DiagnosticSignError        = { link = "DiagnosticError" },
    DiagnosticSignWarn         = { link = "DiagnosticWarn" },
    DiagnosticSignInfo         = { link = "DiagnosticInfo" },
    DiagnosticSignHint         = { link = "DiagnosticHint" },

    DiagnosticVirtualTextError = { fg = c.red, bg = util.blend(c.red, c.bg, 0.15)},
    DiagnosticVirtualTextWarn = { fg = c.yellow, bg = util.blend(c.yellow, c.bg, 0.15)},
    DiagnosticVirtualTextInfo = { fg = c.blue, bg = util.blend(c.blue, c.bg, 0.15)},
    DiagnosticVirtualTextHint = { fg = c.aqua, bg = util.blend(c.aqua, c.bg, 0.15)},

    DiagnosticUnderlineError    = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn    = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo    = { undercurl = true, sp = c.blue },
    DiagnosticUnderlineHint    = { undercurl = true, sp = c.aqua },
  }
end

return M
