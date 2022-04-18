local c = require("chocolate.colors").get()
local util = require("chocolate.util")

local M = {}

function M.get()
  return {
    NeogitBranch               = { fg = c.yellow },
    NeogitRemote               = { fg = c.aqua },

    NeogitHunkHeader           = { fg = c.blue, bg = c.bg2 },
    NeogitHunkHeaderHighlight  = { fg = c.blue, bg = c.bg4 },

    NeogitDiffAdd              = { fg = c.diff.add },
    NeogitDiffDelete           = { fg = c.diff.delete },

    NeogitDiffAddHighlight     = { bg = util.blend(c.diff.add, c.bg, 0.2) },
    NeogitDiffDeleteHighlight  = { bg = util.blend(c.diff.delete, c.bg, 0.2) },
    NeogitDiffContextHighlight = { bg = c.bg2 },

    NeogitNotificationInfo     = { fg = c.blue },
    NeogitNotificationWarning  = { fg = c.yellow },
    NeogitNotificationError    = { fg = c.red },
  }
end

return M
