vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>pr", "<cmd>Ntree<cr>")

-- neo tree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree<cr>")

-- test if active
vim.keymap.set("n", "<leader>t", function() print("Remaps are active") end)

-- copy to clipboard with <leader>y or <leader>Y
vim.keymap.set({"n", "v"}, "<leader>y", '"+y')
vim.keymap.set({"n", "v"}, "<leader>d", '"+d')
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Escape to remove highlights 

-- Window commands. ':help wincmd'
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

