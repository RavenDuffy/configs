-- Requires: rust analyzer (or, preferrably, rustup then rust-src)
return {
  cmd = {
    "rust-analyzer",
  },
  filetypes = {
    "rust",
  },
  imports = {
    granularity = {
      group = "module"
    },
    prefix = "self",
  },
  cargo = {
    buildScripts = {
      enable = true
    },
  },
  procMacro = {
    enable = true
  },
  log_level = vim.lsp.protocol.MessageType.Warning,
}
