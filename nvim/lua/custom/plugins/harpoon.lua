return {
 	"ThePrimeagen/harpoon",
 	config = function()
 		local harpoon = require("harpoon")
 		local telescope = require("telescope")

 		local harpoonMarks = require("harpoon.mark")
 		local harpoonUi = require("harpoon.ui")

 		telescope.load_extension("harpoon")

 		vim.keymap.set("n", "<leader>hm", harpoonUi.toggle_quick_menu, { desc = "[h]arpoon [m]enu" })

 		vim.keymap.set("n", "<leader>hf", harpoonMarks.add_file, { desc = "[h]arpoon [a]dd file" })

 		vim.keymap.set("n", "<leader>hn", harpoonUi.nav_next, { desc = "[h]arpoon [n]ext file" })
 		vim.keymap.set("n", "<leader>hp", harpoonUi.nav_prev, { desc = "[h]arpoon [p]rev file" })

 		harpoon.setup({})
 	end,
 }
