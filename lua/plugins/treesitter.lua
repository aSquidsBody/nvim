return {
	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
  opts = {
    ensure_installed = { "go", "lua", "java", "json" },
    highlight = {
      enable = true
    },
    indent = {
      enable = true
    }
  },
  config = function(_, opts) 
    require("nvim-treesitter.configs").setup(opts)
  end
}
