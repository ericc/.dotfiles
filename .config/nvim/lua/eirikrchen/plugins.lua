local status, packer = pcall(require, 'packer')
if (not status) then
  print('Packer is not installed')
  return
end

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use {
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  }

  -- Indent blank line
  use 'lukas-reineke/indent-blankline.nvim'

  -- Lualine
  use 'nvim-lualine/lualine.nvim'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Harpoon2
  use {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Git
  use 'tpope/vim-fugitive'
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }

  -- LSP support
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Autocompletion engine
  use 'hrsh7th/nvim-cmp'     -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer'   -- nvim-cmp source for buffer words

  -- Snippets
  use 'L3MON4D3/LuaSnip' -- Snippet

  -- Additional enhancements
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use {
    'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }
end)
