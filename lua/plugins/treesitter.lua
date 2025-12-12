return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-textobjects',
	},
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = {
				"lua",
				"python",
				"verilog",
				"c",
				"terraform",
				"go",
				"javascript",
				"regex",
				"gitignore",
				"graphql",
				"markdown",
				"html",
				"css",
				"sql",
				"dockerfile",
				"bash",
				"tsx",
				"java",
				"json",
				"toml",
				"yaml",
				"vim",
			},

			auto_install = true,
			
			highlight = { enable = true },
			indent = { enable = true },
		}
	end
}
