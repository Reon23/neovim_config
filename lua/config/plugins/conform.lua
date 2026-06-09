return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },
      nix = { "nixfmt" },
    },
    formatters = {
      ruff_format = {
        command = "ruff",
      },
    },
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  },

  config = function(_, opts)
    require("conform").setup(opts)
  end,
}
