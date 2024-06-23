function ColorMyPencils(color)
	color = color or "tokyonight-moon"
	vim.cmd.colorscheme(color)
end

return
{
    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {}
    },
}
