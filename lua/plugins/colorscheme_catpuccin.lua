return {
  'catppuccin/nvim',
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    -- Toggle background transparency
    local bg_transparent = true

    local function apply_theme()
        require("catppuccin").setup({
            flavour = 'mocha',
            transparent_background = bg_transparent
        })
        
        -- Load theme
        vim.cmd.colorscheme("catppuccin")
    end

    local toggle_transparency = function()
      bg_transparent = not bg_transparent
      apply_theme()
    end

    apply_theme()

    -- Toggle background transparency
    vim.keymap.set('n', '<leader>bg', toggle_transparency, { noremap = true, silent = true })
  end
}
