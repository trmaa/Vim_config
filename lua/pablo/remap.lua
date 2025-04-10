vim.keymap.set("n", "<C-s>", vim.cmd.w, { desc = "Save file" })

vim.keymap.set("n", "<C-v>", '"+p')
vim.keymap.set("n", "<C-c>", '"+y')

vim.keymap.set("n", "<leader>f", vim.cmd.Ex)
