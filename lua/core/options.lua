vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.opt.termguicolors = true

vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.wo.signcolumn = "yes"

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.cursorline = true

vim.o.swapfile = false

vim.o.smartindent = true

vim.o.undofile = true
vim.opt.runtimepath:append(vim.fn.stdpath "data" .. "/site")
