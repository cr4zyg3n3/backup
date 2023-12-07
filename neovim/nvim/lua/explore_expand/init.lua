-- ~/.config/nvim/explore_expand/init.lua

-- debuging :
--print('Path:', vim.fn.expand('<sfile>:p'))


-- 1. Define a Lua module named M
local M = {}

-- 2. Define a function within the module to explore and expand folders
M.explore_expand = function(folder)
    -- debugging.print
    print("Exploring folder:", folder)
    -- 3. Open Netrw in the specified folder
    vim.cmd('Explore ' .. folder)
    -- 4. Open NetrwTree to expand folders
    vim.cmd('silent! NetrwTreeOpen')

    -- 5. List entries (files and directories) in the current folder
    local entries = vim.fn.readdir(folder)
    
    -- 6. Check if there are entries in the folder
    if entries then
        -- 7. Loop through each entry
        for _, entry in ipairs(entries) do
            -- 8. Construct the full path of the current entry
            local entry_path = folder .. '/' .. entry
            
            -- 9. Check if the entry is a directory
            if vim.fn.isdirectory(entry_path) == 1 then
                -- 10. Open Netrw in the subfolder
                vim.cmd('Explore ' .. entry_path)
                -- 11. Open NetrwTree to expand subfolders
                vim.cmd('silent! NetrwTreeOpen')
                -- 12. Recursively explore subfolders
                M.explore_expand(entry_path)
            end
        end
    end
end

-- 13. Define a function to set up autocmd for VimEnter event
M.setup_autocmd = function()
    vim.cmd([[
	augroup AutoExpandNetrw
		autocmd!
        	autocmd VimEnter * lua require('explore_expand').explore_expand(vim.fn.expand('%:p:h'))
	augroup END
    ]])
end

-- 14. Return the module table M
return M

