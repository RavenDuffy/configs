vim.lsp.enable({
  "lua-language-server",
  "ts-language-server",
  "prettierd",
  "rust-analyzer",
})

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

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
