curl -L --create-dirs https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -o ~/bin/nvim.appimage
chmod u+x ~/bin/nvim.appimage
nvim.appimage --appimage-extract
ln -s ~/bin/squashfs-root/usr/bin/nvim ~/bin/nvim
sudo chsh -s `which zsh` `whoami`

if [ -n "$SSH_KEY" ]; then
    echo "Installing keys"
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
