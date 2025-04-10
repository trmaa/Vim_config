local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-g>', function()
  builtin.git_files({
    show_untracked = false,  -- only show tracked files
    recurse_submodules = true  -- include submodules if needed
  })
end, { desc = 'Find Git-tracked files' })

vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Telescope find files' })
