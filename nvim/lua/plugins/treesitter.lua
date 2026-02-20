return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local langs = { "rust", "lua", "vim", "vimdoc", "javascript", "typescript", "tsx", "html", "typst", "markdown", "markdown_inline", "bash" }
    local ts = require("nvim-treesitter")
    ts.setup()
    ts.install(langs)

    vim.api.nvim_create_autocmd("FileType", {
      pattern = langs,
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim.treesitter'.indentexpr()"
      end
    })
  end
}
