local tele = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", tele.find_files, { desc = "Fuzzy find files" })
vim.keymap.set(
  "n",
  "<leader>xf",
  function ()
    tele.find_files({
      find_command = { "rg", "--files", "--follow", "-uu", "--glob=!{**/node_modules/*,**/git/*,**/.next/*}" }
    })
  end,
  { desc = "Fuzzy find files (all)" }
)

vim.keymap.set("n", "<leader>fg", tele.live_grep, { desc = "Grep files" })
vim.keymap.set(
  "n",
  "<leader>xg",
  function ()
    tele.live_grep({
        -- `-uu` is equivalent to `--hidden` and `--no-ignore`
        additional_args = { "-uu", "--glob=!{**/node_modules/*,**/git/*,**/.next/*}" }
    })
  end,
  { desc = "Grep files (all)" }
)
