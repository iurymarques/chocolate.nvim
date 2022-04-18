local c = require("chocolate.colors").get()

local M = {}

function M.get()
  return {
    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText  = { fg = c.fg }, -- used for highlighting "text" references
    LspReferenceRead  = { fg = c.fg }, -- used for highlighting "read" references
    LspReferenceWrite = { fg = c.fg }, -- used for highlighting "write" references

    LspCodeLens                 = { link = "Comment" }, -- Used to color the virtual text of the codelens
    LspCodeLensSeparator        = { link = "Comment" }, -- Used to color the separator between two or more code lens
    LspSignatureActiveParameter = { link = "Comment" }, -- Used to highlight the active parameter in the signature help
  }
end

return M
