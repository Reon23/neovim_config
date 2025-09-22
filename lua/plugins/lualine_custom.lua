return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local function read_pywal_colors()
      local wal_colors_path = os.getenv "HOME" .. "/.cache/wal/colors.json"
      local file = io.open(wal_colors_path, "r")
      if not file then
        return nil
      end
      local json = file:read "*a"
      file:close()
      return vim.fn.json_decode(json)
    end

    local wal = read_pywal_colors()
    -- 🎨 Define colors to match your theme
    local colors = {
      bg = wal.special.background, -- background (editor bg)
      fg = "#d4d4d4", -- foreground (default text)
      blue = wal.colors.color6, -- tags / keywords
      cyan = "#9cdcfe", -- attributes
      orange = "#ce9178", -- strings
      green = wal.colors.color4, -- numbers / constants
      violet = wal.colors.color5, -- functions / keywords
      red = "#803d3d", -- errors
      yellow = "#dcdcaa", -- light yellow (for commands / highlights)
      darkblue = wal.colors.color2, -- darker shade for sections
    }

    -- Custom theme
    local custom_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.darkblue, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.darkblue, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
        b = { bg = colors.darkblue, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.darkblue, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.darkblue, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.bg, fg = colors.blue },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
    }

    -- Section configs
    local mode = {
      "mode",
      fmt = function(str)
        return " " .. str
      end,
    }

    local filename = {
      "filename",
      file_status = true,
      path = 0,
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      "diagnostics",
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn" },
      symbols = { error = " ", warn = " ", info = " ", hint = " " },
      colored = true,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      "diff",
      colored = true,
      symbols = { added = " ", modified = " ", removed = " " },
      cond = hide_in_width,
    }

    require("lualine").setup {
      options = {
        icons_enabled = true,
        theme = custom_theme,
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
        disabled_filetypes = { "alpha", "neo-tree" },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { "branch" },
        lualine_c = { filename },
        lualine_x = { diagnostics, diff, { "encoding", cond = hide_in_width }, { "filetype", cond = hide_in_width } },
        lualine_y = { "location" },
        lualine_z = { "progress" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { { "location", padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { "fugitive" },
    }
  end,
}
