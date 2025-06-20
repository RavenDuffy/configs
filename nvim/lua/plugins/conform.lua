return {
  "stevearc/conform.nvim",
  events = { "BufReadPre", "BufNewFile", "BufWritePre" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      markdown = { "prettierd" },
      markdown_inline = { "prettierd" },
      rust = { "rustfmt" },
    }
  }
}
