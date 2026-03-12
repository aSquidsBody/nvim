local ensure_installed = {
        "lua_ls",
        "gopls",
        "jdtls",
        -- "clangd",
        "stylua",
}

return {
  {
    "folke/lazydev.nvim",
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {},
    dependencies = {
      "folke/lazydev.nvim",
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
    },
    opts = {
      automatic_enable = false,
      ensure_installed = ensure_installed,
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason-lspconfig.nvim",
    },
    config = function(opts)
      local home = os.getenv("HOME")
      local on_attach_onmifunc = function(client, bufnr)
        vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")
      end


      vim.lsp.config["gopls"] = {
        on_attach = on_attach_onmifunc,
      }
      -- vim.lsp.config["lua_ls"] = {
      --   settings = {
      --     Lua = {
      --       diagnostics = {
      --         globals = {
      --           "vim",
      --         },
      --       },
      --     },
      --   },
      -- }

      -- for _, server in ipairs(ensure_installed) do
      --   vim.lsp.enable(server)
      -- end
      return opts
    end,
  },
}
