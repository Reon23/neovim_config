return {
  "metalelf0/black-metal-theme-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("black-metal").setup {
      variant = "dark", -- optional
      transparent = true,
    }
    vim.cmd.colorscheme "gorgoroth"
  end,
}
