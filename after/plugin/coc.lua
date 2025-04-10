vim.api.nvim_set_keymap("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<CR>"]], {
    expr = true,
    noremap = true,
    silent = true
})
