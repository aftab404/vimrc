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

  use { 
	  'olivercederborg/poimandres.nvim',
	  config = function()
		  require('poimandres').setup {
			  bold_vert_split = false, -- use bold vertical separators
			  dim_nc_background = false, -- dim 'non-current' window backgrounds
			  disable_background = true, -- disable background
			  disable_float_background = false, -- disable background for floats
			  disable_italics = false, -- disable italics
		  }
	  end
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('nvim-treesitter/playground')
  use('tpope/vim-fugitive')
  use('github/copilot.vim')
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
  end)
