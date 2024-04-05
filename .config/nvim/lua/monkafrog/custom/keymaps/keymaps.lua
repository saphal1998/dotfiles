-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-x>', '<C-\\><C-n><C-w>h', { silent = true })

-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Window
vim.keymap.set('n', '(', [[<cmd>vertical resize +3<cr>]], { desc = 'Make the window bigger vertically' })
vim.keymap.set('n', ')', [[<cmd>vertical resize -5<cr>]], { desc = 'Make the window smaller vertically' })

-- Terminal mode
-- Exit terminal mode on clicking escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { silent = true, desc = 'Exit terminal mode' })

-- Macros
vim.keymap.set('n', 'Q', '@qj', { desc = 'Run the q register' })
vim.keymap.set('x', 'Q', ':norm@q<C-R>', { desc = 'Run the q register in visual mode' })

-- Move blocks of lines in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Tab related keymaps
vim.keymap.set('n', '<leader>tz', ':tabnew | term<CR>', { desc = 'Open a new tab with a terminal' })
vim.keymap.set('n', '<leader>tt', ':tabnew<CR>', { desc = 'Open a new tab' })
vim.keymap.set('n', '<leader>td', ':tabclose<CR>', { desc = 'Close the current tab' })
vim.keymap.set('n', '<leader>tl', ':tabnext<CR>', { desc = 'Next tab' })
vim.keymap.set('n', '<leader>th', ':tabprev<CR>', { desc = 'Prev tab' })

-- Split
vim.keymap.set('n', '<leader>v', ':vs<CR>', { desc = '[V]ertical split' })
vim.keymap.set('n', '<leader>s', ':sp<CR>', { desc = 'Horizontal [S]plit' })

-- Make something executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

-- Paste into shadow buffer, also don't override what I delete
vim.keymap.set('x', '<leader>p', [["_dP]])
