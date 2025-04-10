vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
	'haorenW1025/completion-nvim',
	opt = true,
	requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
    }

    use 'hallison/vim-darkdevel'

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    use {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
    }

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

    use 'preservim/nerdtree' 

    use {
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
	    vim.cmd("colorscheme rose-pine")
	end
    }
end)
