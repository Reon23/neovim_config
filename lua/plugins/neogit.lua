return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required
    "sindrets/diffview.nvim", -- Optional: for diff view
  },
  config = function()
    require("neogit").setup()
  end,
}
