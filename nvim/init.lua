-- Settings

-- use space as <leader> key
vim.g.mapleader = ' '

vim.o.updatetime = 500
-- enable mouse
vim.opt.mouse='a'

-- set Tab = 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- show line number
vim.opt.number = true

-- show invisible characters
vim.opt.list = true
vim.opt.listchars="tab:>\\ ,trail:·,nbsp:+,eol:↵"

-- set theme
vim.o.termguicolors = true
vim.cmd[[colorscheme tokyonight]]
vim.g.tokyonight_style = "dark"
vim.g.nord_contrast = true
vim.g.nord_borders = true
vim.g.nord_enable_sidebar_background = true
vim.g.nord_italic = false

-- configure custom keymaps
require "tudor.keymap"

-- install plugins
require "tudor.plugins"

-- configure LSP
require "tudor.lsp"

-- load debugger
require "tudor.dap"

-- configure Telescope
require "tudor.telescope"
