-- [Keymaps]

-- Clear highlights on search when pressing <Ctrl>n in normal mode
vim.keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>")
-- goes to normal mode when jj
vim.keymap.set("i", "jj", "<Esc>")

-- Use System Clipboard
vim.schedule(function()
	vim.o.clipboard = 'unnamedplus'
end)
