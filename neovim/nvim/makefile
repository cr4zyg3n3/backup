all : mkdir touch tree cat

clean: 
	@echo ___
	@echo clean:
	@echo rm -rf ~/.local/share/nvim*
	rm -rf ~/.local/share/nvim*
	@echo rm -rf ~/.local/store/nvim*
	rm -rf ~/.local/store/nvim*
	@echo rm -r ~/.cache/nvim/luac 
	rm -r ~/.cache/nvim/luac
	@echo tree ~/.cache/nvim/luac
	tree ~/.cache/nvmim/luac
	@echo tree ~/.local
	tree ~/.local
mkdir:
	@echo ___
	@echo mkdir:
	@echo mkdir -p ~/.config/nvim/lua/core
	mkdir -p ~/.config/nvim/lua/core
	@echo mkdir -p ~/.config/nvim/lua/plugins
	mkdir -p ~/.config/nvim/lua/plugins
	@echo  mkdir -p ~/.config/nvim/lua/colorschemes
	mkdir -p ~/.config/nvim/lua/colorschemes

touch:
	@echo ___
	@echo touch:
	@echo touch ~/.config/nvim/init.lua
	touch ~/.config/nvim/init.lua
	@echo touch ~/config/nvim/init.lua
	touch ~/.config/nvim/init.lua 
	@echo touch ~/.config/nvim/core/lazy.lua
	touch ~/.config/nvim/lua/core/lazy.lua
	@echo touch ~/.config/nvim/lua/plugins/colorscheme.lua
	touch ~/.config/nvim/lua/plugins/colorscheme.lua

tree: 
	@echo ___
	@echo tree:
	@echo tree ~/.config/nvim
	tree ~/.config/nvim
	@echo tree ~/.local
	tree ~/.local

cat:
	@echo ___
	@echo cat:
	@echo cat ~/.config/nvim/init.lua
	cat ~/.config/nvim/init.lua

