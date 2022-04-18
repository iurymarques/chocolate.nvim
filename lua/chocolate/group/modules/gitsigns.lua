local c = require("chocolate.colors").get()

local M = {}

function M.get()
  return {
    GitSignsAdd    = { fg = c.diff.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
  }
end

return M
