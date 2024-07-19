return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"flake8",
				"gofmt",
				"gopls",
				"bash-language-server",
				"java-language-server",
			},
		},
	},
}
