return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_intalled = {
			"html",
			"ts_ls",
			"cssls",
			"clangd",
			"lua_ls",
			"emmet_ls",
			"tailwindcss",
		},
	},
	dependencies = {
		{
			"mason-org/mason.nvim",
			opts = {}
		},

		"neovim/nvim-lspconfig"
	},
}
