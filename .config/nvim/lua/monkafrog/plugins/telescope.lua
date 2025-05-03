return { -- Fuzzy Finder (files, lsp, etc)
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy', -- Load Telescope only when needed
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- Optional: Faster sorting
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' }, -- Optional: Add a nicer selection UI
    { 'nvim-tree/nvim-web-devicons', lazy = true }, -- Optional: Icons (only load if you use them)
  },
  opts = {
    defaults = {
      mappings = {
        n = {
          ['q'] = require('telescope.actions').close,
        },
      },
    },
    extensions = {
      ['ui-select'] = {
        require('telescope.themes').get_dropdown(),
      },
    },
    pickers = {
      find_files = {
        find_command = { 'rg', '--files', '--hidden', '--follow' },
      },
      live_grep = {},
    },
  },
  keys = {
    {
      '<leader>sh',
      function()
        require('telescope.builtin').help_tags()
      end,
      desc = '[S]earch [H]elp',
    },
    {
      '<leader>sk',
      function()
        require('telescope.builtin').keymaps()
      end,
      desc = '[S]earch [K]eymaps',
    },
    {
      '<leader>sf',
      function()
        require('telescope.builtin').find_files()
      end,
      desc = '[S]earch [F]iles',
    },
    {
      '<leader>ss',
      function()
        require('telescope.builtin').builtin()
      end,
      desc = '[S]earch [S]elect Telescope',
    },
    {
      '<leader>sw',
      function()
        require('telescope.builtin').grep_string()
      end,
      desc = '[S]earch current [W]ord',
    },
    {
      '<leader>sg',
      function()
        require('telescope.builtin').live_grep()
      end,
      desc = '[S]earch by [G]rep',
    },
    {
      '<leader>sd',
      function()
        require('telescope.builtin').diagnostics()
      end,
      desc = '[S]earch [D]iagnostics',
    },
    {
      '<leader>sr',
      function()
        require('telescope.builtin').resume()
      end,
      desc = '[S]earch [R]esume',
    },
    {
      '<leader>s.',
      function()
        require('telescope.builtin').oldfiles()
      end,
      desc = '[S]earch Recent Files ("." for repeat)',
    },
    {
      '<leader>sm',
      function()
        require('telescope.builtin').man_pages()
      end,
      desc = '[S]earch [M]an pages',
    },
    {
      '<leader>/',
      function()
        require('telescope.builtin').current_buffer_fuzzy_find()
      end,
      desc = '[/] Fuzzily search in current buffer',
    },
    {
      '<leader>s/',
      function()
        require('telescope.builtin').live_grep {
          grep_open_files = true,
          prompt_title = 'Live Grep in Open Files',
        }
      end,
      desc = '[S]earch [/] in Open Files',
    },
    {
      '<leader>sn',
      function()
        require('telescope.builtin').find_files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = '[S]earch [N]eovim files',
    },
    -- Example of overriding default mappings for a specific picker
    -- { '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = '[F]ind [F]iles', remap = true, buffer = false },
    --   opts = {
    --     config = {
    --       mappings = {
    --         n = {
    --           ['<C-down>'] = require('telescope.actions').move_selection_next,
    --           ['<C-up>'] = require('telescope.actions').move_selection_previous,
    --         },
    --       },
    --     },
    --   },
    -- },
  },
}
