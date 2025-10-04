if vim.fn.has("wsl") == 1 then
  if vim.fn.executable("wl-copy") == 1 then
    vim.g.clipboard = {
      name = "wl-clipboard (wsl)",
      copy = {
        ["+"] = "wl-copy --foreground --type text/plain",
        ["*"] = "wl-copy --foreground --type --primary --type text/plain",
      },
      paste = {
        ["+"] = (function()
          return vim.fn.systemlist('wsl-paste --no-newline|sed -e "s/\r$//"', { '' }, 1)
        end),
        ["*"] = (function()
          return vim.fn.systemlist('wsl-paste --primary --no-newline|sed -e "s/\r$//"', { '' }, 1)
        end)
      },
      cache_enabled = true
    }
  end
end

-- Fix for yaml.docker-compose filetypes https://github.com/neovim/neovim/discussions/26571#discussioncomment-11879196
vim.filetype.add({
  pattern = {
    ["compose.*%.ya?ml"] = "yaml.docker-compose",
    ["docker%-compose.*%.ya?ml"] = "yaml.docker-compose",
  }
})
