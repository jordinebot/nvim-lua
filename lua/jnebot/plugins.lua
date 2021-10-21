require('packer').startup(function()

  -- Packer, the packet manager
  use 'wbthomason/packer.nvim'

  -- auto close brackets and parentheses
  use 'cohama/lexima.vim'

  -- auto close HTML tags

  -- improved syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- fuzzy finder with nice UI
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }

  -- file icons for tree
  use 'kyazdani42/nvim-web-devicons'

  -- tree file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

  -- fast and easy status line
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  -- lazy load syntax highlighting for many languages
  use 'sheerun/vim-polyglot'

  -- integrate Prettier into vim
  use {
    'prettier/vim-prettier',
    run = 'yarn install',
    ft = {
      'javascript',
      'typescript',
      'typescriptreact',
      'css',
      'less',
      'scss',
      'graphql',
      'markdown',
      'vue',
      'html'
    }
  }

  -- LSP server for autocompletion
  use 'neovim/nvim-lspconfig'

  -- autocompletion plugin
  use 'hrsh7th/nvim-compe'

  -- git diff
  use 'mhinz/vim-signify'

  -- a persona wiki in vim
  use 'vimwiki/vimwiki'


  -- Custom Actions
  -- --------------

  -- tpope's surround action (ys, cs, ds)
  use 'tpope/vim-surround'

  -- tpope's comment action
  use 'tpope/vim-commentary'


  -- Custom Operators
  -- ----------------
  
  -- replace with register (grr)
  use 'vim-scripts/ReplaceWithRegister'

  -- use system's clipboard (cp)
  use 'christoomey/vim-system-copy'




  -- Custom Text Objects
  -- -------------------
  -- see: https://github.com/kana/vim-textobj-user/wiki
  use 'kana/vim-textobj-user'
  use 'kana/vim-textobj-indent'
  use 'kana/vim-textobj-line'



  -- Themes
  -- ------
  use {'dracula/vim', as = 'dracula'}


end)

-- Plugins customization
require('jnebot.plugins.telescope')
require('jnebot.plugins.nvim-tree')
require('jnebot.plugins.nvim-treesitter')
require('jnebot.plugins.lspconfig')
require('jnebot.plugins.compe')
require('jnebot.plugins.lualine')
require('jnebot.plugins.vimwiki')

