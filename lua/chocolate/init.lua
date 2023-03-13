local M = {}

--- @class Config
M.config = {
  undercurl = true,
  transparent = false,
  overrides = {},
}

--- @param config Config
function M.setup(config)
  M.config = vim.tbl_extend("force", M.config, config or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "chocolate"
  vim.o.pumblend = 10
  vim.o.termguicolors = true

  local palette = require("chocolate.palette")
  require("chocolate.highlights").highlight(palette, M.config)
end

return M
