#!/data/data/com.termux/files/usr/bin/sh
HOME=/data/data/com.termux/files/home

# This script will uninstall z-mux

rm -rf $HOME/.config/powerline
rm -rf $HOME/.zshrc
rm -rf $HOME/.figlet-font
rm -rf $HOME/.vimrc

pkg uninstall neofetch figlet -y

if [ -d $HOME/.config/powerline.bak ]
then
	mv $HOME/.config/powerline.bak $HOME/.config/powerline
else
	pip uninstall powerline-status -y
fi

if [ -f $HOME/.zshrc.bak ]
then
	mv $HOME/.zshrc.bak $HOME/.zshrc
else
	pkg uninstall zsh -y
	chsh -s bash
fi

if [ -f $HOME/.vimrc.bak ]
then
	mv $HOME/.vimrc.bak $HOME/.vimrc
else
	pkg uninstall vim-python -y
fi

echo "[*] Successfully Uninstalled Z-MUX!"
echo "[*} Restart Termux!"
