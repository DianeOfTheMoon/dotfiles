#/bin/sh
sudo apt-get install -y zsh

sudo chsh -s `which zsh` `whoami`
echo 'export XDG_CONFIG_HOME="$HOME/.config"' > /etc/zsh/zshenv
echo 'export XDG_DATA_HOME="$HOME/.local/share"' > /etc/zsh/zshenv
echo 'export XDG_CACHE_HOME="$HOME/.cache"' > /etc/zsh/zshenv
echo 'export ZDOTDIR="$XDG_CONFIG_HOME/zsh"' > /etc/zsh/zshenv

git config --global user.email "dianeofthemoon@gmail.com"
git config --global user.name "Diane Cochran"

curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

if [ -n "$SSH_KEY" ]; then
    echo "Installing keys"
    mkdir ~/.ssh
    echo $SSH_KEY > ~/.ssh/id_ed25519
    echo $SSH_KEY_PUB > ~/.ssh/id_ed25519.pub
fi
