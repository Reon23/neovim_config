return {
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
}
