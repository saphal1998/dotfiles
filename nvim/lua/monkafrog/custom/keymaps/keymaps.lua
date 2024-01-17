-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-x>', '<C-\\><C-n><C-w>h', { silent = true })

-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })

-- Window
vim.keymap.set("n", "=", [[<cmd>vertical resize +3<cr>]], { desc = "Make the window bigger vertically" })
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]], { desc = "Make the window smaller vertically" })

-- Terminal mode
-- Exit terminal mode on clicking escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { silent = true, desc = "Exit terminal mode" })

-- Macros
vim.keymap.set('n', 'Q', '@qj', { desc = "Run the q register" })
vim.keymap.set('x', 'Q', ':norm@q<C-R>', { desc = "Run the q register in visual mode" })

-- Move blocks of lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Buffers related keymaps
vim.api.nvim_set_keymap("n", "bk", ":blast<enter>", { noremap = false, desc = "Go [T]o Last buffer" })
vim.api.nvim_set_keymap("n", "bj", ":bfirst<enter>", { noremap = false, desc = "Go [T]o First buffer" })
vim.api.nvim_set_keymap("n", "bh", ":bprev<enter>", { noremap = false, desc = "Go [T]o Prev buffer" })
vim.api.nvim_set_keymap("n", "bl", ":bnext<enter>", { noremap = false, desc = "Go [T]o Next buffer" })
vim.api.nvim_set_keymap("n", "bd", ":bdelete<enter>", { noremap = false, desc = "Delete buffer" })
