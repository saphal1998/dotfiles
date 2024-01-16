return {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  config = function()
    local harpoon = require 'harpoon'
    local telescope = require 'telescope'

    telescope.load_extension('harpoon')
    harpoon:setup()

    vim.keymap.set('n', '<C-h>m', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = '[h]arpoon [m]enu' })

    vim.keymap.set('n', '<leader>fl', function()
      harpoon:list():append()
    end, { desc = '[h]arpoon add [f]i[l]e' })

    vim.keymap.set('n', '<C-q>', function()
      harpoon:list():select(1)
    end, { desc = '[h]arpoon jump to file [' .. 1 .. ']' })
    vim.keymap.set('n', '<C-w>', function()
      harpoon:list():select(2)
    end, { desc = '[h]arpoon jump to file [' .. 2 .. ']' })
    vim.keymap.set('n', '<C-e>', function()
      harpoon:list():select(3)
    end, { desc = '[h]arpoon jump to file [' .. 3 .. ']' })
    vim.keymap.set('n', '<C-r>', function()
      harpoon:list():select(4)
    end, { desc = '[h]arpoon jump to file [' .. 4 .. ']' })
  end,
}
