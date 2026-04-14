-- return {
-- 	"xero/miasma.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd("colorscheme miasma")
--
-- 		vim.cmd([[
-- 		highlight Normal guibg=none ctermbg=none
-- 		highlight NormalNC guibg=none
-- 		highlight NonText guibg=none
-- 		highlight LineNr guibg=none
-- 		]])
--
-- 	end,
-- }

-- return {
--   "ellisonleao/gruvbox.nvim",
--   priority = 1000,
--   config = function(_, opts)
--     require("gruvbox").setup {
--       transparent_mode = true,
--     }
--     vim.cmd "colorscheme gruvbox"
--   end,
-- }

return {
  "kdheepak/monochrome.nvim",
  config = function()
    vim.cmd "colorscheme monochrome"

    vim.cmd [[
	      highlight Normal guibg=none ctermbg=none
	      highlight NormalNC guibg=none
	      highlight NonText guibg=none
	      highlight LineNr guibg=none
	    ]]
  end,
}
