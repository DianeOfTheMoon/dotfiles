/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install neovim
sudo chsh -s `which zsh` `whoami`

if [ -n "$SSH_KEY" ]; then
    echo "Installing keys"
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
