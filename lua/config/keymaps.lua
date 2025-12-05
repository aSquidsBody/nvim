vim.g.mapleader=" "

-- yank
vim.keymap.set("v", "<Leader>y", '"+y')
vim.keymap.set({"n", "v" }, "<Leader>Y", '"+Y')


-- diagnostics
local virtual_text_level = 0
vim.keymap.set('n', '<Leader>dd', function()

  if virtual_text_level == 0 then
    print("Diagnostic level: ERROR")
    vim.diagnostic.config({
      virtual_text = {
        severity = { min = vim.diagnostic.severity.ERROR }
      }
    })
  elseif virtual_text_level == 1 then
    print("Diagnostic level: WARN")
    vim.diagnostic.config({
      virtual_text = {
        severity = { min = vim.diagnostic.severity.WARN }
      }
    })
  elseif virtual_text_level == 2 then
    print("Diagnostic level: INFO")
    vim.diagnostic.config({
      virtual_text = {
        severity = { min = vim.diagnostic.severity.INFO }
      }
    })
  elseif virtual_text_level == 3 then
    print("Diagnostic level: NONE")
    vim.diagnostic.config({
      virtual_text = false
    })
  end
  virtual_text_level = (virtual_text_level + 1) % 4
end, {desc = "Toggle virtual text"})

-- remove matches when clearing search
vim.keymap.set("n", "<ESC>", ":noh<CR>", { noremap = true, silent = true })

-- navigation
vim.keymap.set("n", "<Leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")

-- format file
vim.keymap.set("n", "<Leader>f", "gg=G")
vim.keymap.set("v", "<Leader>f", "=")

-- new window
vim.keymap.set("n", "<Leader>pn", "<C-w>s")
vim.keymap.set("n", "<Leader>pm", "<C-w>v")

-- undo tree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")


