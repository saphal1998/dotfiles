-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-x>', '<C-\\><C-n><C-w>h', { silent = true })

-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })

-- Undotree
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle, { desc = '[u]ndotree[t]oggle' })
