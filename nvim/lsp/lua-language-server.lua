-- Requires: lua-lanugage-server
return {
	cmd = {
		"lua-language-server",
	},
	filetypes = {
		"lua",
	},
	root_markers = {
		".git",
		".luacheckrc",
		".luarc.json",
		".luarc.jsonc",
		"stylua.toml",
		"stylua.yml",
		"selene.toml",
		"selene.yml",
	},
	settings = {
		Lua = {
			format = {
				enable = true,
				defaultConfig = {
					indent_style = "tab",
					indent_size = "4",
				},
			},
			diagnostics = {
				globals = {
					"vim",
				},
				neededFileStatus = {
					["codestyle-check"] = "Any",
				},
			},
		},
	},
	single_file_support = true,
	log_level = vim.lsp.protocol.MessageType.Warning,
}
