local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end
-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used by lots of plugins

  -- Syntax highlight
  use 'nvim-treesitter/nvim-treesitter'

  -- Theme
  use "savq/melange"

  -- Tree folder structure 
  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup()
    end,
  }
  use 'kyazdani42/nvim-web-devicons' -- nice icons in folder tree

  -- tab bars
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- status bar
  use 'feline-nvim/feline.nvim'
  -- shows code location in status bar
  use {
	  'SmiteshP/nvim-gps',
	  requires = 'nvim-treesitter/nvim-treesitter'
  }

  -- Telescope plugin: popup window with actions
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use {'nvim-telescope/telescope-dap.nvim' }

  -- LSP plugins
  use 'neovim/nvim-lspconfig' -- LSP configs
  use 'hrsh7th/nvim-cmp' -- Autocomplete engine
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp

  -- Debug
  use 'mfussenegger/nvim-dap'

  -- Dart
  use 'dart-lang/dart-vim-plugin'

  -- Flutter
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Linter
  use {
    'dense-analysis/ale',
    config = function()
      vim.g.ale_sign_error = '•'
      vim.g.ale_sign_warning = '•'
      vim.g.ale_sign_info = '·'
      vim.g.ale_sign_style_error = '·'
      vim.g.ale_sign_style_warning = '·'
      vim.g.ale_linters = {['cs'] = {'OmniSharp'}}
    end
  }

  -- Git
  use 'airblade/vim-gitgutter'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

