# Z-MUX = ZSH + TERMUX

This programme customise the original bash terminal of Termux in to a ZSH Terminal, powered with the Powerline Themes.

This setup will install:
- ZSH Shell
- Powerline Status Bar
- Neofetch
- Figlet with 3-d Font

### How to install

```bash
# First clone this repository by typing...
git clone https://github.com/sudipta-nandan/z-mux.git

# Change to z-mux directory
cd z-mux

# Run install.sh script
./install.sh

# And Done, z-mux will be installed in your termux.
```

### How to uninstall

```bash
# Run uninstall.sh script
./uninstall.sh
```

Note: 
- If .zshrc file not found in $HOME then zsh will be uninstalled and termux will be reverted to bash terminal.
- Python has to be manually uninstalled by ```pkg uninstall python -y```
