return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      progress = {
        enabled = false,
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function(_, opts)
    require("notify").setup {
      background_colour = "#000000",
    }
    require("noice").setup(opts)
  end,
}
