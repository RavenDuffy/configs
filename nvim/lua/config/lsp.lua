vim.lsp.enable({
  "lua-language-server",
  "ts-language-server",
  "prettierd",
  "rust-analyzer",
  "terraform-language-server",
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

vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
