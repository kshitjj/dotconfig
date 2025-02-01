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
	mv  ./xkb/custom /usr/share/X11/xkb/symbols/custom
	mv ./xkb/us /usr/share/X11/xkb/symbols/us
	mv ./.zshrc /home/kshitij/.zshrc
	mv ./.config/nvim /home/kshitij/.config/nvim -r
	mv ./.config/alacritty /home/kshitij/.config/alacritty -r
	mv ./.config/sway /home/kshitij/.config/sway -r
	mv ./.config/eww /home/kshitij/.config/eww -r


