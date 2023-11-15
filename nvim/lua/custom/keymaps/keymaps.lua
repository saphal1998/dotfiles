-- Netrw
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-x>', '<C-\\><C-n><C-w>h', { silent = true })

-- Moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center cursor after moving down half-page' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center cursor after moving down half-page' })

-- Quickfix list
local open_quickfix = function()
	vim.cmd('copen')
end
vim.keymap.set('n', '<C-q>', open_quickfix, { desc = 'Open quick fix list' })
local clear_quickfix = function()
	vim.fn.setqflist({}, "r")
end
vim.keymap.set('n', '<C-q>c', clear_quickfix, { desc = "Clear quick fix list" })
