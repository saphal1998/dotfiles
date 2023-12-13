-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-x>', '<C-\\><C-n><C-w>h', { silent = true })

-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })

-- Quickfix list
local clear_quickfix = function()
	vim.fn.setqflist({}, "r")
end
vim.keymap.set('n', '<C-q>c', clear_quickfix, { desc = "Clear quick fix list" })

-- Window
vim.keymap.set("n", "=", [[<cmd>vertical resize +3<cr>]], { desc = "Make the window bigger vertically" })
vim.keymap.set("n", "-", [[<cmd>vertical resize -5<cr>]], { desc = "Make the window smaller vertically" })

-- Terminal mode
-- Exit terminal mode on clicking escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { silent = true, desc = "Exit terminal mode" })

-- Macros
vim.keymap.set('n', 'Q', '@qj', { desc = "Run the q register" })
vim.keymap.set('x', 'Q', ':norm@q<C-R>', { desc = "Run the q register in visual mode" })
