
local tele = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", tele.find_files, { desc = "Fuzz find files" })
vim.keymap.set("n", "<leader>fg", tele.live_grep, { desc = "Grep files" })
