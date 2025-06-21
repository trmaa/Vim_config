vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	--STUFF
	use 'wbthomason/packer.nvim'

		--file system
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'preservim/nerdtree' 

		--syntax
	use 'neoclide/coc.nvim'
	use {
		"Exafunction/windsurf.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		config = function()
			require("codeium").setup({
			})
		end
	}

	--COLOR
		--treesitter
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	
		--schemes
	use 'hallison/vim-darkdevel'
	use {
		"rose-pine/neovim",
		name = "rose-pine",
	}
	use 'sainnhe/gruvbox-material'
	use 'tpope/vim-vividchalk'
	use 'trapd00r/neverland-vim-theme'
	use 'nyoom-engineering/oxocarbon.nvim'
	use 'rebelot/kanagawa.nvim'

		--status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use 'rust-lang/rust.vim'

		--cursor
	use 'sphamba/smear-cursor.nvim'
end)
