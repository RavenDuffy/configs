return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--follow",
        "--hidden",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case"
      }
    },
    pickers = {
      find_files = {
        hidden = true,
        no_ignore = true,
        find_command = {
          "rg",
          "--files",
          "--hidden",
          "--glob=!**/.git/*",
          "--glob=!**/node_modules/*",
        }
      }
    }
  }
}
