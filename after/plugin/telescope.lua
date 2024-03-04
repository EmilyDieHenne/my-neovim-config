local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "[F]ind File" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "[G]rep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "[B]uffer" })
