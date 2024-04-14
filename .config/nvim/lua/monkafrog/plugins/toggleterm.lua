return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    local toggleterm = require 'toggleterm'
    toggleterm.setup {
      shell = 'zsh',
      direction = 'float',
    }

    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<CR>', { desc = '[T]oggle [T]erm' })
  end,
}
