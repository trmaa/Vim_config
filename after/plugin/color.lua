function set_color(color)
    color = color or "vim"--"kanagawa"--"gruvbox-material"--"rose-pine"--"darkdevel"--"lucid"--"afterglow"--"twilight256"--"oxocarbon"
	vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

set_color()
