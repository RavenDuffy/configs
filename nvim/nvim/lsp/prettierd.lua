-- Requires: prettierd
return {
  cmd = {
    "prettierd",
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
