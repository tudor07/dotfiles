local status, ibl = pcall(require, "ibl")
if not status then
  return
end

local status_hooks, hooks = pcall(require, "ibl.hooks")
if not status_hooks then
  return
end

local highlight = {
    "CurrentScope",
}

-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "CurrentScope", { fg = "#BDBFCB" })
end)

ibl.setup {
  scope = {
    char = "│",
    highlight = highlight,
  },
  indent = {
    char = "│"
  }
}
