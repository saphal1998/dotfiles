return {
  'saghen/blink.cmp',

  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'supermaven' },
      providers = {
        supermaven = {
          name = 'supermaven',
          module = 'blink.compat.source',
          score_offset = 3,
        },
      },
    },
    signature = { enabled = true },
  },
  dependencies = {
    'saghen/blink.compat',
    'rafamadriz/friendly-snippets',
    {
      'supermaven-inc/supermaven-nvim',
      opts = {
        keymaps = {
          accept_suggestion = nil,
        },
        disable_inline_completion = true,
      },
    },
  },
}
