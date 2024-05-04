return {
	{
		"onsails/lspkind.nvim",
		lazy = true,
		opts = {
			mode = "symbol",
			symbol_map = {
				Array = "󰅪",
				Boolean = "⊨",
				Class = "󰌗",
				Constructor = "",
				Key = "󰌆",
				Namespace = "󰅪",
				Null = "NULL",
				Number = "#",
				Object = "󰀚",
				Package = "󰏗",
				Property = "",
				Reference = "",
				Snippet = "",
				String = "󰀬",
				TypeParameter = "󰊄",
				Unit = "",
			},
			menu = {},
		},
		enabled = vim.g.icons_enabled,
		config = require("plugins.configs.lspkind"),
	},
	{
		"NvChad/nvim-colorizer.lua",
		event = "User AstroFile",
		cmd = { "ColorizerToggle", "ColorizerAttachToBuffer", "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers" },
		opts = { user_default_options = { names = false } },
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			-- -- local highlight = {
			-- --   "CursorColumn",
			-- --   "Whitespace",
			-- -- }
			-- -- require("ibl").setup {
			-- --   indent = { highlight = highlight, char = "" },
			-- --   whitespace = {
			-- --     highlight = highlight,
			-- --     remove_blankline_trail = false,
			-- --   },
			-- --   scope = { enabled = false },
			-- -- }
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}

			local hooks = require("ibl.hooks")
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
			end)

			local opts = {
				-- indent = { highlight = highlight, char = "▏" },
				indent = { highlight = highlight, char = "┊" },
				scope = { show_start = true, show_end = true },
				exclude = {
					buftypes = {
						"nofile",
						"terminal",
					},
					filetypes = {
						"help",
						"startify",
						"aerial",
						"alpha",
						"dashboard",
						"lazy",
						"neogitstatus",
						"NvimTree",
						"neo-tree",
						"Trouble",
					},
				},
			}

			require("ibl").setup(opts)
			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
		-- event = "User AstroFile",
		-- main = "ibl",
		-- opts = {
		--   indent = { char = "▏" },
		--   scope = { show_start = true, show_end = true },
		--   exclude = {
		--     buftypes = {
		--       "nofile",
		--       "terminal",
		--     },
		--     filetypes = {
		--       "help",
		--       "startify",
		--       "aerial",
		--       "alpha",
		--       "dashboard",
		--       "lazy",
		--       "neogitstatus",
		--       "NvimTree",
		--       "neo-tree",
		--       "Trouble",
		--     },
		--   },
		-- },
	},
}
