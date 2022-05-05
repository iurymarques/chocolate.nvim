local options = require("chocolate.config").options

local M = {}

local function highlight(module)
  for group, colors in pairs(module) do
    vim.api.nvim_set_hl(0, group, colors)
  end
end

local function set_terminal_colors()
  local c = require "chocolate.colors"

  -- stylua: ignore
  local colors = {
    c.black,   c.red,
    c.green,   c.yellow,
    c.blue,    c.magenta,
    c.cyan,    c.white,
    c.black, c.red,
    c.green, c.yellow,
    c.blue,  c.magenta,
    c.cyan,  c.white
  }

  for i, value in ipairs(colors) do
    local n = "terminal_color_" .. i - 1
    vim.g[n] = value
  end
  if vim.fn.has "nvim" == 0 then
    vim.g.terminal_ansi_colors = vim.list(colors)
  end
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd [[ hi clear ]]
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "chocolate"

  local editor = require("chocolate.group.editor").get()
  local syntax = require("chocolate.group.syntax").get()
  highlight(editor)
  highlight(syntax)

  for name, _ in pairs(options.modules or {}) do
    local module = require("chocolate.group.modules." .. name).get()
    highlight(module)
  end

  set_terminal_colors()
end

return M
