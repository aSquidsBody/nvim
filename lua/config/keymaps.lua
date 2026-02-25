vim.g.mapleader = " "

-- yank
vim.keymap.set("v", "<Leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<Leader>Y", '"+Y')

-- remove matches when clearing search
vim.keymap.set("n", "<ESC>", ":noh<CR>", { noremap = true, silent = true })

-- navigation
vim.keymap.set("n", "<Leader>pv", ":Ex<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")

-- format file
vim.keymap.set({ "n", "v" }, "<Leader><Leader>f", function()
  vim.lsp.buf.format()
end, { desc = "Format the selected region, or the entire buffer" })

-- new window
vim.keymap.set("n", "<Leader>pn", "<C-w>s")
vim.keymap.set("n", "<Leader>pm", "<C-w>v")

-- window resize
vim.keymap.set("n", "<C-=>", function()
  vim.cmd("resize +8")
end, { noremap = false, silent = true })
vim.keymap.set("n", "<C-->", function()
  vim.cmd("resize -8")
end, { noremap = true, silent = true })
