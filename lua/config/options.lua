-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.wrap = false

-- persistent undo
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo"

-- diagnostics
-- Overwrite open_floating_preview
local orig = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.wrap = opts.wrap or true
  return orig(contents, syntax, opts, ...)
end

-- set configs
vim.diagnostic.config({
  underline = true,
  virtual_text = {
    severity = { max = vim.diagnostic.severity.WARN },
  },
  signs = false,
  float = true,
  severity_sort = true,
  -- virtual_lines = true,
})
