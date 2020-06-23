sudo apt-get install -y software-properties-common
sudo apt-get update
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y python-dev python-pip python3-dev python3-pip neovim
sudo chsh -s `which zsh` `whoami`

if [ -n "$SSH_KEY" ]; then
    echo "Installing keys"
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
