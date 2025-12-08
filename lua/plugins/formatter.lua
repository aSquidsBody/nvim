return {
  {
  "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
          lua = { "stylua" },
          go = { "goimports" },
          c = { "clang-format" }
      },
    }
  },
  {
    "zapling/mason-conform.nvim",
    dependencies = { "mason-org/mason.nvim" },
    opts = {
      ensure_installed = {
        "goimports",
        "clang-format"
      }
    }
  }
}
