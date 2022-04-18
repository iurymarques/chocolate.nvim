local c = require("chocolate.colors").get()
local util = require("chocolate.util")

local M = {}

function M.get()
  return {
    DapBreakpoint = { fg = c.red, bg = util.blend(c.red, c.bg, 0.15) },
    DapBreakpointLine = { bg =  util.blend(c.red, c.bg, 0.15) },
    DapBreakpointLineNr = { link = "DapBreakpoint" },

    DapBreakpointRejected = { fg = c.fg },

    DapBreakpointStopped = { fg = c.green, bg = util.blend(c.green, c.bg, 0.15) },
    DapBreakpointStoppedLine = { bg = util.blend(c.green, c.bg, 0.15) },
    DapBreakpointStoppedLineNr = {  link = "DapBreakpointStopped" },
  }
end

return M
