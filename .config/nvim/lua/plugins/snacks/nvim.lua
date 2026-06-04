require("snacks").setup({
	bigfile = { enabled = true },
	bufdelete = { enabled = true },
	explorer = { enabled = true },
	indent = { enabled = true },
	input = { enabled = true },
	notifier = { enabled = true },
	picker = { enabled = true },
	quickfile = { enabled = true },
	scope = { enabled = true },
	words = { enabled = true },
})

vim.keymap.set("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", function()
	Snacks.picker.grep()
end, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fh", function()
	Snacks.picker.help()
end, { desc = "Help tags" })
vim.keymap.set("n", "<leader>fx", function()
	Snacks.picker.diagnostics_buffer()
end, { desc = "Buffer diagnostics" })
vim.keymap.set("n", "<leader>fX", function()
	Snacks.picker.diagnostics()
end, { desc = "Workspace diagnostics" })
vim.keymap.set("n", "<leader>e", function()
	Snacks.explorer()
end, { desc = "Explorer" })

local file_list_path = vim.fn.stdpath("data") .. "/snacks-file-list.json"
local file_list_index = 1

local function read_file_list()
	local ok, lines = pcall(vim.fn.readfile, file_list_path)
	if not ok or not lines or #lines == 0 then
		return {}
	end

	local decode_ok, decoded = pcall(vim.json.decode, table.concat(lines, "\n"), { luanil = { object = true, array = true } })
	if not decode_ok then
		return {}
	end

	if type(decoded) ~= "table" then
		return {}
	end

	local items = {}
	for _, path in ipairs(decoded) do
		if type(path) == "string" and path ~= "" then
			table.insert(items, path)
		end
	end
	return items
end

local function write_file_list(items)
	vim.fn.mkdir(vim.fn.fnamemodify(file_list_path, ":h"), "p")
	vim.fn.writefile({ vim.json.encode(items) }, file_list_path)
end

local function jump_to(path)
	if not path then
		return
	end
	vim.cmd.edit(vim.fn.fnameescape(path))
end

local function add_file()
	local path = vim.api.nvim_buf_get_name(0)
	if path == "" then
		Snacks.notify.warn("No file to add")
		return
	end

	local items = read_file_list()
	if vim.tbl_contains(items, path) then
		Snacks.notify.info("Already in file list")
		return
	end

	table.insert(items, path)
	write_file_list(items)
	file_list_index = #items
	Snacks.notify.info("Added " .. vim.fn.fnamemodify(path, ":~:."))
end

local function select_file(index)
	local items = read_file_list()
	file_list_index = index
	jump_to(items[index])
end

local function cycle_file(delta)
	local items = read_file_list()
	if #items == 0 then
		Snacks.notify.warn("File list is empty")
		return
	end

	file_list_index = ((file_list_index - 1 + delta) % #items) + 1
	jump_to(items[file_list_index])
end

local function open_file_list()
	local items = read_file_list()
	if #items == 0 then
		Snacks.notify.warn("File list is empty")
		return
	end

	vim.ui.select(items, {
		prompt = "Files",
		format_item = function(path)
			return vim.fn.fnamemodify(path, ":~:.")
		end,
	}, function(path, index)
		if path then
			file_list_index = index
			jump_to(path)
		end
	end)
end

vim.keymap.set("n", "<leader>ha", add_file, { desc = "Add file" })
vim.keymap.set("n", "<leader>hm", open_file_list, { desc = "File menu" })
vim.keymap.set("n", "<leader>h1", function()
	select_file(1)
end, { desc = "File 1" })
vim.keymap.set("n", "<leader>h2", function()
	select_file(2)
end, { desc = "File 2" })
vim.keymap.set("n", "<leader>h3", function()
	select_file(3)
end, { desc = "File 3" })
vim.keymap.set("n", "<leader>h4", function()
	select_file(4)
end, { desc = "File 4" })
vim.keymap.set("n", "<C-S-P>", function()
	cycle_file(-1)
end, { desc = "Previous file" })
vim.keymap.set("n", "<C-S-N>", function()
	cycle_file(1)
end, { desc = "Next file" })
