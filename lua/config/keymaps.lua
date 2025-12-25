vim.g.mapleader=" "

-- yank
vim.keymap.set("v", "<Leader>y", '"+y')
vim.keymap.set({"n", "v" }, "<Leader>Y", '"+Y')

-- remove matches when clearing search
vim.keymap.set("n", "<ESC>", ":noh<CR>", { noremap = true, silent = true })


-- window resize
vim.keymap.set('n', '<C-=>', '8<C-w>+', { noremap = true, silent = true})
vim.keymap.set('n', '<C-->', '8<C-w>-', { noremap = true, silent = true})

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

