local opts = {
	shiftwidth = 8,
	tabstop = 8,
	expandtab = true,
	wrap = false,
	termguicolors = true,
	number = true,
	relativenumber = true,
}
vim.opt_local.conceallevel = 2
vim.o.conceallevel=2
-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

--  theme
vim.cmd.colorscheme "catppuccin"
