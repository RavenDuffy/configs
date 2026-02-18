-- Requires: terraform-ls
return {
  cmd = {
    "terraform-ls",
    "serve",
  },
  filetypes = {
    "terraform",
    "tf"
  },
  init_options = {
    ignoreSingleFileWarning = true
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
