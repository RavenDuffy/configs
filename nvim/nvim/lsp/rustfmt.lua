-- Requires: rustfmt (or, preferrably, rustup)
return {
  cmd = {
    "rustfmt",
  },
  filetypes = {
    "rust",
  },
  root_markers = {
    ".git",
    "main.rs",
    "Cargo.toml",
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
