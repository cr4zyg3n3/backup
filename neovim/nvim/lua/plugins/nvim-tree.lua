-- ~/.config/nvim/lua/plugins/nvim-tree.lua

return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		local nvimtree = require("nvim-tree")

		-- recomended.settings.for.nvim-tree.documentation 
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change.color.for.arrows.in.tree.to.light.blue
		vim.cmd([[highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

	-- configure nvim-tree
	nvimtree.setup()
	view = {
		width = 60,
	}
	local keymap = vim.keymap -- for conciseness
	keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>") -- toggle.file.explorer
	keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
	keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
	keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
	end,
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	}
}
