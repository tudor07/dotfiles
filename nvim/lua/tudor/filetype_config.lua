-- C# files use 4 spaces width
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  command = "setlocal shiftwidth=4 tabstop=4"
})
