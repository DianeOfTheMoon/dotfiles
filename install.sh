git clone https://github.com/Homebrew/linuxbrew.git ~/.linuxbrew
cat 'PATH="$HOME/.linuxbrew/bin:$PATH"' >> ~/.profile
cat 'LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"' >> ~/.profile
source ~/.profile
brew install neovim
sudo chsh -s `which zsh` `whoami`

if [ -n "$SSH_KEY" ]; then
    echo "Installing keys"
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
