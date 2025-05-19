return {
  "olimorris/onedarkpro.nvim",
  name = "onedarkpro",
  lazy = false,
  priority = 1000,
  config = function()
    -- Toggle background transparency
    local bg_transparent = true

    local function apply_theme()
      require("onedarkpro").setup {
        options = {
          transparency = bg_transparent,
        },
      }

      -- Load theme
      vim.cmd.colorscheme "onedark_dark"
    end

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      apply_theme()
    end

    apply_theme()

    -- Toggle background transparency
    vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
  end,
}
