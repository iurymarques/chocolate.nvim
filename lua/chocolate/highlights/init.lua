--- @param palette ColorPalette
--- @param config Config
local function setup(palette, config)
  local highlights = {}
  for _, highlight in ipairs({
    "editor",
    "syntax",
    "treesitter",
    "lsp",
    "plugins",
  }) do
    local mod = require("chocolate.highlights." .. highlight)
    for hl, spec in pairs(mod.setup(palette, config)) do
      highlights[hl] = spec
    end
  end

  return highlights
end

local M = {}

--- @param palette ColorPalette
--- @param config Config
function M.highlight(palette, config)
  local highlights = setup(palette, config)
  for hl, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, spec)
  end
end

return M
