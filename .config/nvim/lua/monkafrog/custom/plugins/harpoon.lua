return {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  config = function()
    local harpoon = require 'harpoon'
    local telescope = require 'telescope'

    telescope.load_extension('harpoon')
    harpoon:setup()

    vim.keymap.set('n', 'hm', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = '[h]arpoon [m]enu' })

    vim.keymap.set('n', 'hi', function()
      harpoon:list():append()
    end, { desc = '[h]arpoon add [f]i[l]e' })

    vim.keymap.set('n', 'hq', function()
      harpoon:list():select(1)
    end, { desc = '[h]arpoon jump to file [' .. 1 .. ']' })
    vim.keymap.set('n', 'hw', function()
      harpoon:list():select(2)
    end, { desc = '[h]arpoon jump to file [' .. 2 .. ']' })
    vim.keymap.set('n', 'he', function()
      harpoon:list():select(3)
    end, { desc = '[h]arpoon jump to file [' .. 3 .. ']' })
    vim.keymap.set('n', 'hr', function()
      harpoon:list():select(4)
    end, { desc = '[h]arpoon jump to file [' .. 4 .. ']' })
    vim.keymap.set('n', 'ht', function()
      harpoon:list():select(5)
    end, { desc = '[h]arpoon jump to file [' .. 5 .. ']' })
    vim.keymap.set('n', 'hy', function()
      harpoon:list():select(6)
    end, { desc = '[h]arpoon jump to file [' .. 6 .. ']' })
  end,
}