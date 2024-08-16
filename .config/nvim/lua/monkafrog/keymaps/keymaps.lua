-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Macros
vim.keymap.set('n', 'Q', '@qj', { desc = 'Run the q register' })
vim.keymap.set('x', 'Q', ':norm@q<C-R>', { desc = 'Run the q register in visual mode' })

-- Tab related keymaps
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'Open a new tab' })
vim.keymap.set('n', '<leader>td', ':tabclose<CR>', { desc = 'Close the current tab' })
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader>th', ':tabprev<CR>', { desc = 'Prev tab' })

-- Make something executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Paste into shadow buffer, also don't override what I delete
vim.keymap.set('x', '<leader>p', [["_dP]])

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
