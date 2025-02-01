# Add dynamic fetching for home dir with $HOME, can't be that hard
get:
	cp /usr/share/X11/xkb/symbols/custom ./xkb/custom
	cp /usr/share/X11/xkb/symbols/us ./xkb/us
	cp /home/kshitij/.zshrc ./.zshrc
	cp /home/kshitij/.config/nvim ./.config/nvim -r
	cp /home/kshitij/.config/alacritty ./.config/alacritty -r
	cp /home/kshitij/.config/sway ./.config/sway -r
	cp /home/kshitij/.config/eww ./.config/eww -r

set:
	cp -biv ./xkb/custom /usr/share/X11/xkb/symbols/custom
	cp -biv ./xkb/us /usr/share/X11/xkb/symbols/us
	cp -biv ./.zshrc /home/kshitij/.zshrc
	cp -rbiv ./.config/nvim /home/kshitij/.config/nvim
	cp -rbiv ./.config/alacritty /home/kshitij/.config/alacritty
	cp -rbiv ./.config/sway /home/kshitij/.config/sway
	cp -rbiv ./.config/eww /home/kshitij/.config/eww


