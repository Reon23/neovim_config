return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { 
          "lua", 
          "luadoc", 
          "vim",
          "html", 
          "bash", 
          "c", 
          "python", 
          "javascript",
          "java",
          "json",
          "css",
          "sql",
          "dockerfile",
          "cmake",
          "make",
          "yaml"
      }, -- add more as needed
      auto_install = true,
      highlight = {
        enable = true,
      },
    }
  end
}
