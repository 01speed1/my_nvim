function ColorMyPencils(color)
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    if tonumber(vim.o.t_Co) > 2 then
        vim.api.nvim_set_hl(0, "ExtraWhitespace", { bg = "#fb4934" })
        vim.cmd('match ExtraWhitespace /\\s\\+$/')
    else
        vim.o.listchars = 'trail:~'
        vim.opt.list = true
    end
end

ColorMyPencils()
