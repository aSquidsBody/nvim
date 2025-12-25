local virtual_text_level = 0

-- trouble is for fancy diagnostics --
return {
  "folke/trouble.nvim",
  cmd = { "Trouble" },
  opts = {
    modes = {
      lsp = {
        win = { position = "right" }
      },
    },
  }, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<leader>cs",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<leader>cl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
      desc = "Location List (Trouble)",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
      desc = "Quickfix List (Trouble)",
    }, {
      "<Leader>dd",
      function()
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
      end,
      desc = "Toggle diagnostic level",
      mode = "n"
    }
  },
}
