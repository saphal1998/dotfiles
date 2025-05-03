return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      typescript = { 'eslint_d' },
      lua = { 'stylua' },
      ocaml = { 'ocamlformat' },
    },
    format_on_save = function(bufnr)
      -- Disable with a global or buffer-local variable
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end
      return { timeout_ms = 500, lsp_fallback = true }
    end,
    -- Customize formatters
    formatters = {
      shfmt = {
        prepend_args = { '-i', '2' },
      },
    },
  },
  init = function()
    vim.api.nvim_create_user_command('FormatToggle', function(args)
      if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = not vim.b.disable_autoformat
      else
        vim.g.disable_autoformat = not vim.g.disable_autoformat
      end
    end, {
      desc = 'Toggle autoformat-on-save',
      bang = true,
    })
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
  end,
}
