return {
  "windwp/nvim-ts-autotag",
  opts = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = false,
      },
    })
  end,
}
