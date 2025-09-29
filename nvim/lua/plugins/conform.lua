return {
  "stevearc/conform.nvim",
  events = { "BufReadPre", "BufNewFile", "BufWritePre" },
  opts = {
    formatters_by_ft = {
      markdown = { "prettierd" },
      markdown_inline = { "prettierd" },
      json = { "prettierd" },
      typescriptreact = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      javascript = { "prettierd" },
      -- terraform = { "terraform-language-server" },
      -- tf = { "terraform-language-server" },
    },
    formatters = {
      prettierd = {
        env = {
          PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/lsp/.prettierrc.json")
        }
      }
    }
  }
}
