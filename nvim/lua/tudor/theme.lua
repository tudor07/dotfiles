local status, shade = pcall(require, "shade")
if not status then
  return
end

-- Add an overlay to the inactive windows
shade.setup({
  overlay_opacity = 50,
  opacity_step = 1,
})

-- Customize LSP symbols
local function lspSymbol(name, icon)
  vim.fn.sign_define(
    'DiagnosticSign' .. name,
    { text = icon, numhl = 'DiagnosticDefault' .. name }
  )
end
lspSymbol('Error', '')
lspSymbol('Warning', '')
lspSymbol('Information', '')
lspSymbol('Info', '')
lspSymbol('Hint', '')

