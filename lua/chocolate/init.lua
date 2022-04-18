local options = require("chocolate.config").options

local M = {}

local function highlight(module)
  for group, colors in pairs(module) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end
function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd [[ hi clear ]]
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "chocolate"

  local editor = require("chocolate.group.editor").get();
  local syntax = require("chocolate.group.syntax").get();
  highlight(editor)
  highlight(syntax)

  for name, _ in pairs(options.modules or {}) do
    local module = require("chocolate.group.modules." .. name).get()
    highlight(module)
  end
end

return M
