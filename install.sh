sudo apt-get install -y neovim
sudo chsh -s `which zsh` `whoami`

if [ -n "$SSH_KEY" ]; then
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
