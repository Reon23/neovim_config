require "core.options"
require "core.keymaps"
require "core.autocmds"

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
require("lazy").setup {
  -- Color Theme
  require "plugins.colorscheme_dark_metal",
  -- File tree
  require "plugins.neotree",
  -- Buffer line
  require "plugins.bufferline",
  -- Status line
  require "plugins.lualine_custom",
  -- Syntax higlighting
  require "plugins.treesitter",
  -- LSP
  require "plugins.lsp",
  -- Java LSP
  require "plugins.nvim-jdtls",
  -- AutoCompletion
  require "plugins.autocompletion",
  -- AutoFormatting
  require "plugins.none-ls",
  -- Fuzzy finder
  require "plugins.telescope",
  -- Git Signs
  require "plugins.gitsigns",
  -- Git interface
  require "plugins.neogit",
  -- Startup Screen
  require "plugins.alpha",
  -- Indent lines
  require "plugins.indent-blankline",
  -- Smooth Cursor
  require "plugins.smear_cursor",
  -- Miscellaneous plugins
  require "plugins.misc",
}
