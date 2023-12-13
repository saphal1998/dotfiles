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

    for i = 1, 9 do
      local key = '<C-' .. i .. '>'
      vim.keymap.set('n', key, function()
        harpoon:list():select(i)
      end, { desc = '[h]arpoon jump to file [' .. i .. ']' })
    end
  end,
}
