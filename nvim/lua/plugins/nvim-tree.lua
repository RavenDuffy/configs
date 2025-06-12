return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    vim.keymap.set("n", "<leader>tt", ":NvimTreeToggle<CR>", { noremap = true })
  }
}
