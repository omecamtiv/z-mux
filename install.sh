#!/bin/sh
PREFIX=/data/data/com.termux/files

# define install_python
install_python() {
	if [ ! -f $PREFIX/usr/bin/python ]
	then
		pkg update -y ; pkg install python -y
	fi
}

# define install_powerline
install_powerline() {
	if [ ! -f $PREFIX/usr/bin/powerline ]
	then
		pip install powerline-status
	fi
}

# define install_zsh
install_zsh() {
	if [ ! -f $PREFIX/usr/bin/zsh ]
	then
		pkg install zsh -y
	fi
}

# define install_neofetch
install_neofetch() {
	if [ ! -f $PREFIX/usr/bin/neofetch ]
	then
		pkg install neofetch -y
	fi
}

# define install_figlet
install_figlet() {
	if [ ! -f $PREFIX/usr/bin/figlet ]
	then
		pkg install figlet -y
	fi
}

# define backup
define() {
	if [ -f $PREFIX/home/.zshrc ]
	then
		mv $PREFIX/home/.zshrc $PREFIX/home/.zshrc.bak
	fi

	if [ -f $PREFIX/home/.config/powerline ]
	then
		mv $PREFIX/home/.config/powerline $PREFIX/home/.config/.powerline.bak
	fi
}

# define main
main() {
	if [ ! -f $PREFIX/home/.config ]
	then
		mkdir $PREFIX/home/.config
	fi

	cp -r powerline $PREFIX/home/.config/powerline
	cp rc.conf $PREFIX/home/.zshrc
	mkdir $PREFIX/home/.figlet-font
	cp 3-d.flf $PREFIX/home/.figlet-font

	install_python
	install_powerline
	install_neofetch
	install_figlet
	install_zsh

	chsh -s zsh

	echo "[*] Installation Complete!"
	echo "[*] Restart Termux Session"
}

main
