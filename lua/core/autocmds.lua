-- Yank Highlight
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Main entrypoint on matugen reloads
local function auxiliary_function()
  -- Reload the generated Matugen colors
  package.loaded["generated.colors"] = nil
  require "generated.colors"

  -- Reload lualine (base16 overwrites highlights)
  dofile(vim.fn.stdpath "config" .. "/lua/plugins/lualine.lua")

  -- Any extra highlight tweaks
  vim.api.nvim_set_hl(0, "Comment", { italic = true })
end

-- Listen for matugen reload signal
vim.api.nvim_create_autocmd("Signal", {
  pattern = "SIGUSR1",
  callback = auxiliary_function,
})
