return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = { "rust", "lua", "vim", "vimdoc", "javascript", "typescript", "tsx", "html", "typst", "markdown", "markdown_inline", "bash" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
