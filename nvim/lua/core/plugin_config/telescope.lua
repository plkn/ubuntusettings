local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Leader>ff', builtin.find_files, {desc = "Find files"})
vim.keymap.set('n', '<Leader>fb', builtin.buffers, {desc = "Find buffers"})
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, {desc = "Find in files"})
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, {desc = "Find help"})
vim.keymap.set('n', '<Leader>fk', builtin.keymaps, {desc = "Find keymaps"})
