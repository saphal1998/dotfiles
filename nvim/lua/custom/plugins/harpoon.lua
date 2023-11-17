return {
  'ThePrimeagen/harpoon',
  config = function()
    local harpoon = require 'harpoon'
    local telescope = require 'telescope'

    local harpoonMarks = require 'harpoon.mark'
    local harpoonUi = require 'harpoon.ui'

    telescope.load_extension 'harpoon'

    vim.keymap.set('n', '<C-p>m', harpoonUi.toggle_quick_menu, { desc = 'har[p]oon [m]enu' })

    vim.keymap.set('n', '<C-p>f', harpoonMarks.add_file, { desc = 'har[p]oon [a]dd file' })

    vim.keymap.set('n', '<C-p>n', harpoonUi.nav_next, { desc = 'har[p]oon [n]ext file' })
    vim.keymap.set('n', '<C-p>p', harpoonUi.nav_prev, { desc = 'har[p]oon [p]rev file' })

    for i = 1, 9 do
      local key = '<C-p>' .. i
      vim.keymap.set('n', key, function()
        harpoonUi.nav_file(i)
      end, { desc = 'har[p]oon jump to file [' .. i .. ']' })
    end
    harpoon.setup {}
  end,
}
