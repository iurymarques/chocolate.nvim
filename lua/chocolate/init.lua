local M = {}

local function set_highlights(hlgroups)
  vim.cmd(
    "highlight Normal guibg="
      .. hlgroups.Normal.bg
      .. " guifg="
      .. hlgroups.Normal.fg
  )
  hlgroups.Normal = nil
  for group, colors in pairs(hlgroups) do
    if not vim.tbl_isempty(colors) then
      vim.api.nvim_set_hl(0, group, colors)
    end
  end
end

M.config = {
  overrides = {},
}

function M.setup(config)
  M.config = vim.tbl_extend("force", M.config, config or {})
end

function M.load()
  -- do something
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "chocolate"
  vim.o.termguicolors = true

  local colors = require("chocolate.colors")
  local hlgroups = require("chocolate.hlgroups").setup(colors)

  set_highlights(hlgroups)
end

return M
