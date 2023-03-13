local colors = require("chocolate.palette")

local chocolate = {}

chocolate.normal = {
  a = { bg = colors.bg3, fg = colors.fg, gui = "bold" },
  b = { bg = colors.bg2, fg = colors.fg },
  c = { bg = colors.bg2, fg = colors.fg },
  z = { bg = colors.bg3, fg = colors.fg },
}

chocolate.insert = {
  a = { bg = colors.bg3, fg = colors.green, gui = "bold" },
  z = { bg = colors.bg3, fg = colors.fg },
}

chocolate.command = {
  a = { bg = colors.bg3, fg = colors.yellow, gui = "bold" },
  b = { bg = colors.bg, fg = colors.yellow },
  z = { bg = colors.bg3, fg = colors.fg },
}

chocolate.visual = {
  a = { bg = colors.bg3, fg = colors.purple, gui = "bold" },
  b = { bg = colors.bg, fg = colors.purple },
  z = { bg = colors.bg3, fg = colors.fg },
}

chocolate.replace = {
  a = { bg = colors.bg3, fg = colors.red, gui = "bold" },
  b = { bg = colors.bg, fg = colors.red },
  z = { bg = colors.bg3, fg = colors.fg },
}

chocolate.inactive = {
  a = { bg = colors.bg3, fg = colors.blue, gui = "bold" },
  b = { bg = colors.bg, fg = colors.bg, gui = "bold" },
  c = { bg = colors.bg, fg = colors.bg },
  z = { bg = colors.bg3, fg = colors.fg },
}

return chocolate
