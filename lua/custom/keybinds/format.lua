vim.keymap.set('n', "<leader>cfa", function()
  vim.lsp.buf.format()
end)

return {}
