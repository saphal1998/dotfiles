return {
  'saghen/blink.cmp',
  dependencies = 'rafamadriz/friendly-snippets',

  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    signature = { enabled = true },
  },
}
