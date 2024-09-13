return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    local tokyonight = require 'tokyonight'
    tokyonight.setup { style = 'night' }
    vim.cmd.colorscheme 'tokyonight-night'
  end,
}
