vim.keymap.set('n','<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', '<cmd>write<CR>')
vim.keymap.set('n', '<c-a>', ':keepjumps normal! ggVG<CR>')

-- TODO list
vim.keymap.set('n','<leader>1', '@1') -- see macros.lua
vim.keymap.set('n','<leader>2', '@2') -- see macros.lua

vim.keymap.set('n', '<C-M-q>', ':qa<CR>')
