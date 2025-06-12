return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '*',

  --@module 'blink.cmp'
  --@type blink.cmp.Config

  opts = {
    keymap = {
      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },
      ["<Tab>"] = { "select_and_accept", "fallback" },
    },
  },

  completion = {
    menu = {
      draw = {
        treesitter = { "lsp" }
      }
    },
    ghost_text = {
      enabled = true
    }
  }
}
