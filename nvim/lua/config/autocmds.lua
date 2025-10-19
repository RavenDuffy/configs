vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    -- Used if blink.cmp is no longer in use
    -- local client = vim.lsp.get_client_by_id(ev.data.client_id)
    -- if client:supports_method('textDocument/completion') then
    ---- vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    -- end

    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = ev.buf, desc = "LSP: " .. desc })
    end

    map("<leader>dh", vim.lsp.buf.hover, "Hover Documentation")
    map("<leader>dg", vim.lsp.buf.declaration, "Goto Documentation")
    map("<leader>ra", vim.lsp.buf.rename, "Rename all references")
    map("<leader>ef", vim.lsp.buf.format, "Format")

    vim.cmd("set completeopt+=noselect")
  end
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end
})
