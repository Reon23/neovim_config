return { 
	"ellisonleao/gruvbox.nvim", 
	priority = 1000, 
	config = function(_, opts)
		require("gruvbox").setup({
			transparent_mode = true
		})
		vim.cmd("colorscheme gruvbox")
	end,
}
