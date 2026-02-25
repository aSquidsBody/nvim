return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
    {
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
        library = {
          -- See the configuration section for more details
          -- Load luvit types when the `vim.uv` word is found
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
      },
    },
  },
  opts = {
    automatic_enable = true,
    ensure_installed = { 
      "lua_ls", 
      "gopls", 
      "jdtls",
      "clangd",
      "stylua"
    },

    servers = {
      jdtls = {},
    },
    setup = {
      jdtls = function() 
        return true -- avoid duplicate servers
      end,
    }
  }
}
