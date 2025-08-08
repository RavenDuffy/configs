-- Requires: prettierd
return {
  cmd = {
    "prettierd",
  },
  filetypes = {
    "markdown",
    "markdown_inline",
    "typescriptreact"
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
