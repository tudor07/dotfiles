-- Settings

-- use space as <leader> key
vim.g.mapleader = ' '

vim.o.updatetime = 800
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

-- set theme/style configs
vim.o.termguicolors = true
vim.cmd[[colorscheme melange]]
vim.o.cursorline = true

-- configure custom keymaps
require "tudor.keymap"

-- install plugins
require "tudor.plugins"

-- setup Feline status line
require "tudor.feline"

-- configure LSP
require "tudor.lsp"

-- load debugger
require "tudor.dap"

-- configure Telescope
require "tudor.telescope"
