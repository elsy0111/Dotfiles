

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

vim.cmd.packadd "packer.nvim"

-- Install your plugins here
return packer.startup(function(use)

	use({ "rcarriga/nvim-notify" })
	use({ "MunifTanjim/nui.nvim" })
	use({ "folke/noice.nvim" })

	use({ "wbthomason/packer.nvim" })
	-- use({ "nvim-lua/plenary.nvim" }) -- Common utilities

	-- Colorschemes
	use({ "theJian/vim-fethoi" })
	use({ "machakann/vim-colorscheme-imas" })
	use({ "ayu-theme/ayu-vim" })
	use({ "shaunsingh/nord.nvim" })
	use({ "Abstract-IDE/Abstract-cs" })

	-- cmp plugins
	-- use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	-- use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	-- use({ "hrsh7th/cmp-path" }) -- path completions
	-- use({ "hrsh7th/cmp-cmdline" }) -- cmdline completions
	-- use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	-- use({ "hrsh7th/cmp-nvim-lsp" })
	-- use({ "hrsh7th/cmp-nvim-lua" })
	-- use({ "onsails/lspkind-nvim" })
	use({ "neoclide/coc.nvim" })

	-- snippets
	-- use({ "L3MON4D3/LuaSnip" }) --snippet engine

	-- LSP
	-- use({ "neovim/nvim-lspconfig" }) -- enable LSP
	-- use({ "williamboman/nvim-lsp-installer" }) -- simple to use language server installer
	-- use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	-- use({ "glepnir/lspsaga.nvim" }) -- LSP UIs

	-- Treesitter
	use({ "nvim-treesitter/nvim-treesitter" })

	use({ "tpope/vim-commentary" })
	use({ "Yggdroot/indentLine" })

	use({ "nvim-lualine/lualine.nvim" })
	use({ "preservim/nerdtree" })
	use({ "ryanoasis/vim-devicons" })
	use({ "nvim-tree/nvim-web-devicons" })

	-- use({ "cohama/lexima.vim" })

	-- use({ "williamboman/mason.nvim" })
	-- use({ "williamboman/mason-lspconfig.nvim" })


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)


