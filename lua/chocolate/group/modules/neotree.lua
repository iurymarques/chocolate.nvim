local c = require("chocolate.colors").get()

local M = {}

function M.get()
  return {
    NeoTreeNormal             = { fg = c.fg1 },
    NeoTreeNormalNC           = { link = "NeoTreeNormal" },
    NeoTreeIndentMarker       = { fg = c.bg4 },

    NeoTreeRootName           = { fg = c.orange, bold = true },
    NeoTreeDirectoryName      = { fg = c.blue },
    NeoTreeDirectoryIcon      = { fg = c.blue },
    NeoTreeDotfile            = { fg = c.blue },
    NeoTreeSymbolicLinkTarget = { fg = c.purple },
    NeoTreeFileName           = { fg = c.fg2 },
    NeoTreeFileNameOpened     = { fg = c.fg1 },
    NeoTreeDimText            = { link = "Conceal" },

    NeoTreeGitModified        = { fg = c.diff.change },
    NeoTreeGitAdded           = { fg = c.diff.add },
    NeoTreeGitDeleted         = { fg = c.diff.delete },
    NeoTreeGitConflict        = { fg = c.diff.delete, italic = true },
    NeoTreeGitIgnored         = { fg = c.diff.ignored },
    NeoTreeGitUntracked       = { fg = c.diff.delete }
  }
end

return M
