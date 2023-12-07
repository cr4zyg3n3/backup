-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
	{	--"jacoborus/tender",
		--priority = 1000, -- make.sure.to.load.this.before.all.the.others
		--config = function()
		-- load the colorscheme here
		--vim.cmd([[colorscheme tender]])
	},	
	{		
		"bluz71/vim-nightfly-colors",
		priority = 1000, -- make.sure.to.load.this.before.all.the.others
		config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme nightfly]])
	end,
	}
}

