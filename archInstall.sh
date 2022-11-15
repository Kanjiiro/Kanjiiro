#!/bin/bash
############################################################
## Paru
paruInstall() {
	sudo pacman -S --needed base-devel
	git clone https://aur.archlinux.org/paru.git
	cd paru
	makepkg -si
	cd ..
	rm -rf paru
}

lvimInstall() {
	curl -O https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
	chmod +x install.sh
	bash install.sh
	rm install.sh
}

gitClone() {
	cd ~/
	git clone git@github.com:kanjiiro/dots .dots
	git clone git@github.com:kanjiiro/knowledge
	git clone git@github.com:kanjiiro/jupyter

}
############################################################

if [[ /usr/bin/paru ]]; then
	paru -S \
		alacritty base-devel bat bitwarden bluez-utils brightnessctl bspwm btop buku calcurse cargo cifs-utils darktable ddgr digikam dunst dust exa fd fd figlet fish flameshot fzf gameconqueror \
		gamemode gimp git go gparted heroic-games-launcher imlib2 katex lazygit lazygit lf librewolf-bin librewolf-bin light-locker lightdm-slick-greeter lxappearance man-db mpv nemo neofetch neovim \
		noto-color-emoji-fontconfig npm p7zip pam-u2f pandoc papirus-icon-theme pasystray pavucontrol picom pipes.sh polybar pqiv python-pip ripgrep ripgrep rofi-buku-git rust steam steamlink stow \
		sxhkd synology-drive synology-drive synology-drive telegram-desktop tigervnc trash-cli ttf-cascadia-code wget wine wireguard-tools xclip xournalpp xwallpaper yubico-pam yubioath-desktop-beta-bin \
		yubioath-desktop-beta-bin z zathura zathura-pdf-mupdf ttf-meslo-nerd-font-powerlevel10k scientifica-font

else
	paruInstall
fi

if [[ ~/.gitconfig ]]; then
	gitClone
else
	echo "No .gitconfig"
fi

# extra:
#cryptomator
#opencl-amd

# lvimInstall

# sudo pacman -Rns \
# 	nitrogen xterm xfce4-terminal thunar thunar-media-tags-plugin thunar-archive-plugin thunar-volman
