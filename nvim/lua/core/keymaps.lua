vim.keymap.set('n','<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', '<cmd>write<cr>')
vim.keymap.set('n', '<c-a>', ':keepjumps normal! ggVG<cr>')

-- TODO list
vim.keymap.set('n', '<leader>1', 'I[ ] ')
vim.keymap.set('n', '<leader>2', '^f[lrx')
