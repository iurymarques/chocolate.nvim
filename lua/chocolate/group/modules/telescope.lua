local c = require("chocolate.colors").get()

local M = {}

function M.get()
  return {
    TelescopeBorder         = { fg = c.beige },
    TelescopeSelectionCaret = { fg = c.aqua },
    TelescopeSelection      = { link = "CursorLine" },
    TelescopeMatching       = { link = "Search" },
  }
end

return M
