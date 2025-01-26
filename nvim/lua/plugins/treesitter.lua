return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	config = function()
		require("nvim-treesitter.configs").setup({
			-- Add languages to be installed here that you want installed for treesitter
			ensure_installed = { "c", "cpp", "zig","markdown","markdown_inline" ,"lua", "python", "rust" },
			highlight = { enable = true },
			indent = { enable = true, disable = { "python" } },
		})
	end,
}


