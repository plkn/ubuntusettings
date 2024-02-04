vim.keymap.set('n','<leader>h', ':nohlsearch<CR>')
vim.keymap.set('n', '<c-s>', '<cmd>write<CR>')

-- TODO list
vim.keymap.set('n','<leader>1', '@1') -- see macros.lua
vim.keymap.set('n','<leader>2', '@2') -- see macros.lua

-- close vim
vim.keymap.set('n', '<C-M-q>', ':qa<CR>')
vim.keymap.set('n', '<F10>', ':qa<CR>')

-- move lines up and down
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==')
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi')
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv')
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv')
