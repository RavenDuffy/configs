vim.lsp.enable({
  "lua-language-server",
  "ts-language-server",
  "prettierd",
  "rustfmt",
  "rust-analyzer",
})

vim.diagnostic.config({
  virtual_lines = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  float = {
    border = "rounded",
    source = true,
  },
})

vim.o.winborder = "rounded"
