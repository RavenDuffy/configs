-- Requires: docker-language-server
return {
  cmd = {
    "docker-language-server",
    "start",
    "--stdio"
  },
  filetypes = {
    "dockerfile"
  },
  init_options = {
    ignoreSingleFileWarning = true
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning
}
