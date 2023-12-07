-- ~/.config 
-- clipboard:
vim.api.nvim_set_option('clipboard', 'unnamedplus')

-- Set tabstop to 4 spaces
vim.o.tabstop = 4

-- Set softtabstop to 4 spaces
vim.o.softtabstop = 4

-- Set shiftwidth to 4 spaces
vim.o.shiftwidth = 4

-- Expand tabs to spaces
vim.o.expandtab = true

-- Use smart tabs
vim.o.smarttab = true

-- Display existing tabs as spaces
vim.opt.list = true

-- Set custom characters for displaying tabs and trailing spaces
vim.opt.listchars = { tab = '▸ ', trail = '·' }

-- netrw:
--vim.g.netrw_liststyle = 3
--vim.g.netrw_list_exp = 1

-- keymaps:
--vim.g.mapleader = ";"
--vim.g.maplocalleader = ";"


-- load.lazy:
require("lazy.init") 

-- load.module.explore.expand:
-- require('explore_expand').setup_autocmd()

