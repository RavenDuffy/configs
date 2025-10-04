-- Requires: lua-lanugage-server
return {
  cmd = {
    "docker-compose-langserver",
    "--stdio",
  },
  filetypes = {
    "yaml.docker-compose",
  },
  init_options = {
    ignoreSingleFileWarning = true
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
