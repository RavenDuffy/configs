-- requires eslint and node to be installed globally

return {
  "esmuellert/nvim-eslint",
  config = function()
    require('nvim-eslint').setup({})
  end
}
