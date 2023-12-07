return {
  'ThePrimeagen/harpoon',
  config = function()
    local harpoon = require 'harpoon'
    local telescope = require 'telescope'

    local harpoonMarks = require 'harpoon.mark'
    local harpoonUi = require 'harpoon.ui'

    telescope.load_extension 'harpoon'
    vim.keymap.set('n', '<C-h>m', harpoonUi.toggle_quick_menu, { desc = '[h]arpoon [m]enu' })

    vim.keymap.set('n', '<C-h>f', harpoonMarks.add_file, { desc = '[h]arpoon [a]dd file' })

    vim.keymap.set('n', '<C-h>n', harpoonUi.nav_next, { desc = '[h]arpoon [n]ext file' })
    vim.keymap.set('n', '<C-h>p', harpoonUi.nav_prev, { desc = '[h]arpoon [p]rev file' })

    for i = 1, 9 do
      local key = '<C-h>' .. i
      vim.keymap.set('n', key, function()
        harpoonUi.nav_file(i)
      end, { desc = '[h]arpoon jump to file [' .. i .. ']' })
    end
    harpoon.setup {}
  end,
}
