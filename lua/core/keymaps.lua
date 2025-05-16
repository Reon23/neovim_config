-- [Keymaps]

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- For conciseness
local opts = { noremap = true, silent = true }

-- NOTE: vim.keymap.set(<mode>, <keybind>, <command>, <options>)
-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Clear highlights on search when pressing <Ctrl>n in normal mode
vim.keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>")
-- goes to normal mode when jj
vim.keymap.set("i", "jj", "<Esc>")

-- Use System Clipboard
vim.schedule(function()
	vim.o.clipboard = 'unnamedplus'
end)
