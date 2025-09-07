return {
  "stevearc/oil.nvim",
  dependencies = {
    { "echasnovski/mini.icons", opts = {} },
    -- OR { "nvim-tree/nvim-web-devicons" },
  },
  lazy = false, -- don’t lazy load, oil doesn’t recommend it
  opts = {
    keymaps = {
      ["<C-s>"] = false, -- disable horizontal split on <C-s>
    },
  },
  config = function(_, opts)
    require("oil").setup(opts)

    -- Global keymap for opening Oil
    vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
