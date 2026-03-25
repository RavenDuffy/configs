return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  keys = {
    {
      "<leader>oo",
      function ()
        require("oil").open()
      end,
    },
    {
      "<leader>op",
      function ()
        require("oil").close()
      end,
    },
  },
  lazy = false
}
