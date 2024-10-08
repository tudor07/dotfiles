-- Settings

-- use space as <leader> key
vim.g.mapleader = ' '

vim.o.updatetime = 400
-- enable mouse
vim.opt.mouse = 'a'

-- change scrolling speed
vim.o.scroll = 15
-- make sure 20 lines always visible when scrolling
vim.o.scrolloff = 20

-- set Tab = 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- show line number
vim.opt.number = true

-- search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- show invisible characters
vim.opt.list = true
vim.opt.listchars = "tab:>\\ ,trail:·,space:·,nbsp:+,eol:↵"

-- set theme/style configs
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd [[colorscheme yorumi]]
vim.o.cursorline = true
vim.o.laststatus = 3

-- configure custom keymaps
require "tudor.keymap"

-- install plugins
require "tudor.plugins"

-- setup Feline status line
require "tudor.feline"

-- setup buffers
require "tudor.buffer"

-- configure LSP
require "tudor.lsp"

-- load debugger
require "tudor.dap"

-- configure Telescope
require "tudor.telescope"

-- configure Git stuff
require "tudor.git"

-- configure indent-blankline (highlights current selected context)
require "tudor.blankline"

-- file type specific configurations
require "tudor.filetype_config"

-- theme related settings
require "tudor.theme"
