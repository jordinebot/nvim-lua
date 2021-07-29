require('packer').startup(function()
  use 'wbthomason/packer.nvim'                                             -- Packer, the packet manager

  use 'cohama/lexima.vim'                                              -- auto close brackets and parentheses
  use 'tpope/vim-surround'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
    }
  }

  use 'kyazdani42/nvim-web-devicons'                                       -- for file icons
  use 'kyazdani42/nvim-tree.lua'                                           -- tree file explorer
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use 'sheerun/vim-polyglot'                                               -- lazy load syntax highlighting for many languages
  -- use 'HerringtonDarkholme/yats.vim'
  use {
    'prettier/vim-prettier',
    run = 'yarn install',
    ft = {'javascript', 'typescript', 'typescriptreact', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html'}
  }

  use 'tpope/vim-commentary'

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'mhinz/vim-signify'                     -- git diff

  use 'vimwiki/vimwiki'

  -- Themes
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

