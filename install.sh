#/bin/sh
sudo apt-get install -y zsh

git config --global user.email "dianeofthemoon@gmail.com"
git config --global user.name "Diane Cochran"

sudo chsh -s `which zsh` `whoami`

if [ -n "$SSH_KEY" ]; then
    echo "Installing keys"
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
