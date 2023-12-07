return {
  'fedepujol/move.nvim',
  config = function()
    local opts = { noremap = true, silent = true }
    -- Visual-mode commands
    vim.keymap.set('v', '<C-j>', ':MoveBlock(1)<CR>', opts)
    vim.keymap.set('v', '<C-k>', ':MoveBlock(-1)<CR>', opts)
    vim.keymap.set('v', '<C-h>', ':MoveHBlock(-1)<CR>', opts)
    vim.keymap.set('v', '<C-l>', ':MoveHBlock(1)<CR>', opts)
  end,
}
