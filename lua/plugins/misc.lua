-- Standalone plugins with less than 10 lines of config go here
return {
  {
    -- Detect tabstop and shiftwidth automatically
    "tpope/vim-sleuth",
  },
  {
    -- Powerful Git integration for Vim
    "tpope/vim-fugitive",
  },
  {
    -- GitHub integration for vim-fugitive
    "tpope/vim-rhubarb",
  },
  {
    -- Hints keybinds
    "folke/which-key.nvim",
  },
  {
    -- Autoclose parentheses, brackets, quotes, etc.
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {},
  },
  {
    -- Highlight todo, notes, etc in comments
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
  {
    -- High-performance color highlighter
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    -- ColorPicker
    "uga-rosa/ccc.nvim",
    config = function()
      local mapping = require "ccc.mapping"
      require("ccc").setup {
        mappings = {
          -- Fine adjustments
          h = mapping.decrease1,
          l = mapping.increase1,

          -- Medium jumps
          H = mapping.decrease5,
          L = mapping.increase5,

          -- Big jumps
          ["<C-h>"] = mapping.decrease10,
          ["<C-l>"] = mapping.increase10,
        },
        highlighter = {
          auto_enable = true,
          lsp = true,
        },
      }
    end,
  },
}
