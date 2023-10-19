local status, bufferline = pcall(require, 'bufferline')
if not status then
  return
end

bufferline.setup {
  highlights = {
    buffer_selected = { bold = true },
  },
  options = {
    separator_style = "slope",
    numbers = function(opts)
      return string.format('%s', opts.raise(opts.ordinal))
    end,
    offsets = {
        {
            filetype = "NvimTree",
            text = "󰉋 File Explorer",
            highlight = "Directory",
            separator = true
        }
    }
  }
}

local select_buffer = function()
  local buff_no = vim.fn.input("Buffer: ")
  bufferline.go_to(buff_no)
end


-- (s)elect (b)uffer by ordinal number
vim.keymap.set("n", "<leader>sb", select_buffer)
