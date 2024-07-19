-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

--vim.api.nvim_create_autocmd("BufWritePost", {
--	desc = "Run the linter for the current filetype",
--	group = vim.api.nvim_create_augroup("kickstart-lint", { clear = true }),
--	callback = function()
--		require("lint").try_lint()
--	end,
--})


-- FileType tab behavior
vim.api.nvim_create_autocmd("FileType", {
	pattern = "c",
	command = "setlocal shiftwidth=2 tabstop=2",
})
