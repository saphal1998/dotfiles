return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
    { 'j-hui/fidget.nvim', opts = {} },
  },
  config = function()
    -- LspAttach autocommands and keymaps
    vim.api.nvim_create_autocmd('LspAttach', {
      group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
        end

        map('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
        map('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        map('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
        map('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
        map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
        map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        map('K', vim.lsp.buf.hover, 'Hover Documentation')
        map('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        -- Diagnostic keymaps
        map('[d', vim.lsp.diagnostic.goto_prev, 'Go to previous [D]iagnostic message' )
        map(']d', vim.lsp.diagnostic.goto_next, 'Go to next [D]iagnostic message' )
        map('<leader>e', vim.lsp.diagnostic.open_float, 'Show diagnostic [E]rror messages')
        map('<leader>q', vim.lsp.diagnostic.setloclist, 'Open diagnostic [Q]uickfix list' )

        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities and client.server_capabilities.documentHighlightProvider then
          vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
            buffer = event.buf,
            callback = vim.lsp.buf.clear_references,
          })
        end
      end,
    })

    -- Capabilities (augment via blink.cmp if present)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local ok_blink, blink = pcall(require, 'blink.cmp')
    if ok_blink and blink.get_lsp_capabilities then
      capabilities = vim.tbl_deep_extend('force', capabilities, blink.get_lsp_capabilities())
    end

    -- LSP servers configuration table (you install servers yourself)
    local servers = {
      clangd = {},
      gopls = {},
      html = {
        filetypes = { 'html', 'tmpl' },
      },
      lua_ls = {
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
              checkThirdParty = false,
              library = {
                '${3rd}/luv/library',
                unpack(vim.api.nvim_get_runtime_file('', true)),
              },
            },
            completion = { callSnippet = 'Replace' },
            diagnostics = { disable = { 'missing-fields' } },
          },
        },
      },
      -- Example: to skip tsserver from being auto-configured set to nil here:
      -- tsserver = nil,
    }

    local lspconfig_ok, lspconfig = pcall(require, 'lspconfig')
    if not lspconfig_ok then
      vim.notify('nvim-lspconfig not available', vim.log.levels.ERROR)
      return
    end

    -- Helper: determine executable name to check on PATH
    local function get_expected_cmd(name, cfg)
      -- Priority:
      -- 1) cfg.cmd if provided (array) -> first element
      -- 2) lspconfig's default_config.cmd -> first element
      -- 3) fallback to name
      if cfg and cfg.cmd and type(cfg.cmd) == 'table' and cfg.cmd[1] then
        return cfg.cmd[1]
      end

      local ok, doc_config = pcall(function()
        return lspconfig[name].document_config and lspconfig[name].document_config.default_config
      end)
      if ok and doc_config and doc_config.cmd and type(doc_config.cmd) == 'table' and doc_config.cmd[1] then
        return doc_config.cmd[1]
      end

      return name
    end

    -- Setup servers but skip if executable not found on PATH
    for name, cfg in pairs(servers) do
      if cfg ~= nil then
        local merged_cfg = vim.tbl_deep_extend('force', {
          capabilities = vim.deepcopy(capabilities),
        }, cfg or {})

        local exe = get_expected_cmd(name, merged_cfg)
        if exe and vim.fn.executable(exe) == 1 then
          local ok, err = pcall(function()
            lspconfig[name].setup(merged_cfg)
          end)
          if not ok then
            vim.notify(string.format('Failed to setup LSP server %s: %s', name, err), vim.log.levels.WARN)
          end
        else
          vim.notify(
            string.format('Skipping LSP server %s: executable "%s" not found on PATH. Install it and ensure it is available on PATH.', name, exe),
            vim.log.levels.INFO
          )
        end
      end
    end

    -- Filetype mapping for templ extension
    vim.filetype.add { extension = { templ = 'templ' } }
  end,
}
