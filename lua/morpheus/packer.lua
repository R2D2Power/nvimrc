-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {
      'daltonmenezes/aura-theme',
      rtp = 'packages/neovim',
      config = function()
          vim.cmd("colorscheme aura-soft-dark")
      end
  }
  use {"catppuccin/nvim", as = "catppuccin"}

end)