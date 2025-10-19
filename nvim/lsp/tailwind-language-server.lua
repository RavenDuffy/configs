-- Requires: https://www.npmjs.com/package/@tailwindcss/language-server
return {
  cmd = {
    "tailwindcss-language-server",
    "--stdio",
  },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_markers = {
    ".git",
    "postcss.config.*",
    "tailwind.config.*"
  },
  init_options = {
    ignoreSingleFileWarning = true
  },
  single_file_support = true,
  log_level = vim.lsp.protocol.MessageType.Warning,
}
