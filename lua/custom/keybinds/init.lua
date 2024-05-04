local opts = { noremap = true, silent = true }

-- NOTE: Mapping to go back to :Explorer
vim.keymap.set('n', '-', function()
  vim.api.nvim_command 'Ex'
end)

-- INFO:
-- another way to run Terminal commands:
-- Map("t", "<C-h>", "<cmd>wincmd h<CR>")

-- WARN: Replace capital I with normal i (I keep using capital I by mistake...)
vim.keymap.set('n', 'I', 'i', opts)

return {}
