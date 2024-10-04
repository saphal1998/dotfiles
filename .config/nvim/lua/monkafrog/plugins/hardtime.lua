return {
  'm4xshen/hardtime.nvim',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {},
  config = function()
    local hardtime = require 'hardtime'
    hardtime.setup { max_count = 1 }
  end,
}
