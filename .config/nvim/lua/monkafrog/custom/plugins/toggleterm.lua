return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    local toggleterm = require 'toggleterm'
    toggleterm.setup {
      shell = 'zsh',
      direction = 'float',
    }
  end,
}
