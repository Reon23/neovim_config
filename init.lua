require 'core.options'
require 'core.keymaps'

-- [Plugin Manager]
-- Installs Lazy plugin manager
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end
---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- [Plugins]
require("lazy").setup({
-- Syntax higlighting
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "lua", "vim", "bash", "python", "javascript" }, -- add more as needed
      highlight = {
        enable = true,
      },
    }
  end
},
require 'plugins.colorscheme',
require 'plugins.neotree',
})
