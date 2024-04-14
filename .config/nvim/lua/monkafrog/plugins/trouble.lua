return {
  {
    'folke/trouble.nvim',
    config = function()
      require('trouble').setup {
        icons = false,
      }

      vim.keymap.set('n', '[x', function()
        require('trouble').next { skip_groups = true, jump = true }
      end, { desc = '[[] next trouble' })

      vim.keymap.set('n', ']x', function()
        require('trouble').previous { skip_groups = true, jump = true }
      end, { desc = '[]] prev trouble' })

      vim.keymap.set('n', '<leader>xx', function()
        require('trouble').toggle()
      end, { desc = 'Toggle trouble' })
      vim.keymap.set('n', '<leader>xw', function()
        require('trouble').toggle 'workspace_diagnostics'
      end, { desc = 'Trouble workspace diagnostics' })
      vim.keymap.set('n', '<leader>xd', function()
        require('trouble').toggle 'document_diagnostics'
      end, { desc = 'Trouble document diagnostics' })
      vim.keymap.set('n', '<leader>xq', function()
        require('trouble').toggle 'quickfix'
      end, { desc = 'Trouble quickfix' })
      vim.keymap.set('n', '<leader>xl', function()
        require('trouble').toggle 'loclist'
      end, { desc = 'Trouble loclist' })

      local actions = require 'telescope.actions'
      local trouble = require 'trouble.providers.telescope'

      local telescope = require 'telescope'

      telescope.setup {
        defaults = {
          mappings = {
            i = { ['<c-t>'] = trouble.open_with_trouble },
            n = { ['<c-t>'] = trouble.open_with_trouble },
          },
        },
      }
    end,
  },
}
