require('packer').startup(function()
  use 'wbthomason/packer.nvim'                                             -- Packer, the packet manager
  use 'jiangmiao/auto-pairs'                                               -- auto close brackets and parentheses
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use 'kyazdani42/nvim-web-devicons'                                       -- for file icons
  use 'kyazdani42/nvim-tree.lua'                                           -- tree file explorer

  use 'sheerun/vim-polyglot'                                               -- lazy load syntax highlighting for many languages

  -- Themes
  -- use 'folke/tokyonight.nvim'
  -- use 'joshdick/onedark.vim'
  -- use 'ayu-theme/ayu-vim'
  -- use 'tomasr/molokai'
  -- use 'sickill/vim-monokai'
  -- use 'tpope/vim-vividchalk'
  use 'jcherven/jummidark.vim'

end)

-- Plugins customization
require('jnebot.plugins.telescope')
require('jnebot.plugins.nvim-tree')

