-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Macros
vim.keymap.set('n', 'Q', '@qj', { desc = 'Run the q register' })
vim.keymap.set('x', 'Q', ':norm@q<C-R>', { desc = 'Run the q register in visual mode' })

-- Make something executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Paste into shadow buffer, also don't override what I delete
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

-- Quickfix list
vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')


-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
