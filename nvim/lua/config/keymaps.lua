local tele = require("telescope.builtin")
local oil = require("oil")
local nt = require("nvim-tree.api")

vim.keymap.set("n", "<leader>ff", tele.find_files, { desc = "Fuzzy find files" })
vim.keymap.set("n", "<leader>xf", function()
	tele.find_files({
		find_command = { "rg", "--files", "--follow", "-uu", "--glob=!{**/node_modules/*,**/git/*,**/.next/*}" },
	})
end, { desc = "Fuzzy find files (all)" })

vim.keymap.set("n", "<leader>fg", tele.live_grep, { desc = "Grep files" })
vim.keymap.set("n", "<leader>xg", function()
	tele.live_grep({
		-- `-uu` is equivalent to `--hidden` and `--no-ignore`
		additional_args = { "-uu", "--glob=!{**/node_modules/*,**/git/*,**/.next/*}" },
	})
end, { desc = "Grep files (all)" })

vim.keymap.set("n", "<leader>of", function()
	local o_path = vim.fn.input("", "", "file")
	if o_path ~= nil and o_path ~= "" then
		o_path = o_path:gsub("%s+", "")
		oil.open_float(o_path)
	end
end, { desc = "float directory" })

vim.keymap.set("n", "<leader>tr", function()
	local last_path = nt.tree.get_nodes(1).absolute_path
	local cur_path = vim.fn.expand("%:p:h")
	if last_path ~= cur_path then
		vim.api.nvim_set_var("nvim_tree_custom#last_path", last_path)
	end
	nt.tree.change_root(cur_path)
end)

vim.keymap.set("n", "<leader>tR", function()
	local last_path = vim.api.nvim_get_var("nvim_tree_custom#last_path")
	if last_path then
		nt.tree.change_root(last_path)
	end
end)
