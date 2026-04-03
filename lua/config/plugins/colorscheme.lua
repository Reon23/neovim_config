return {
	"xero/miasma.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme miasma")

		vim.cmd([[
		highlight Normal guibg=none ctermbg=none
		highlight NormalNC guibg=none
		highlight NonText guibg=none
		highlight LineNr guibg=none
		]])

	end,
}
