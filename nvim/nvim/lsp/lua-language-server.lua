-- Requires: lua-lanugage-server
return {
  cmd = {
    "lua-language-server",
  },
  filetypes = {
    "lua",
  },
  root_markers = {
    ".git",
    ".luacheckrc",
    ".luarc.json",
    ".luarc.jsonc",
    "stylua.toml",
    "stylua.yml",
    "selene.toml",
    "selene.yml",
  },
  settings = {
    Lua = {
      diagnostics = {
        globals = {
          'vim',
        }
      },
    },
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
