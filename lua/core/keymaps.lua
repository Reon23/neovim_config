-- leader key
vim.g.mapleader = " "

vim.keymap.set("n", "<C-s>", ":write<CR>", { silent = true, desc = "Save file" })
vim.keymap.set("n", "<C-q>", ":quit<CR>", { silent = true, desc = "Quit Neovim" })

-- Split keybinds
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { silent = true, desc = "Move to left split" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { silent = true, desc = "Move to right split" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { silent = true, desc = "Move to bottom split" })
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { silent = true, desc = "Move to top split" })

vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>l", { silent = true, desc = "Create vertical split" })
vim.keymap.set("n", "<leader>h", ":split<CR><C-w>j", { silent = true, desc = "Create horizontal split" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { silent = true, desc = "Make splits equal in size"})

vim.keymap.set("n", "<leader>xs", ":close<CR>", { silent = true, desc = "Close split" })

-- Resize Splits
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', opts)

-- Scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Stay in visual mode when adding indent
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Keep last yanked when pasting over content
vim.keymap.set("v", "p", '"_dP', opts)

-- Clear highlights
vim.keymap.set("n", "<C-n>", "<cmd>nohlsearch<CR>")
