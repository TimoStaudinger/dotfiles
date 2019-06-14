
# Configure proxy servers
# tee -a ~/.bashrc << END
#
# export http_proxy=http://ip:port/
# export https_proxy=$http_proxy
# END

# sudo tee -a /etc/apt/apt.conf << END
#
# Acquire::http::Proxy "http://ip:port/";
# Acquire::https::Proxy "http://ip:port/";
# END

# source ~/.bashrc


# Update and install apps
sudo apt-get update
sudo apt-get -y upgrade

sudo apt-get -y install htop
sudo apt-get -y install git
sudo apt-get -y install nodejs


# Configure git
git config --global user.email "email@domain.com"
git config --global user.name "Timo Staudinger"
git config --global core.autocrlf input
git config --global core.editor nano
git config --global credential.helper store
# git config --global http.proxy http://ip:port
# git config --global https.proxy http://ip:port


# Install and set up zsh
sudo apt-get install zsh

tee -a ~/.bashrc << END

if [ -t 1 ]; then
  exec zsh
fi
END

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/algotech/dotaliases.git ~/.aliases

tee -a ~/.zshrc << END

plugins=(
  git zsh-syntax-highlighting zsh-autosuggestions
)

LS_COLORS="ow=01;36;40" && export LS_COLORS
zstyle ':completion:*' list-colors "ow=01;36;40"
autoload -Uz compinit
compinit

ZSH_THEME="agnoster"

export DEFAULT_USER="___USERNAME___"
export EDITOR="nano"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

source ~/.aliases/bash_aliases

export PATH="$PATH:$(yarn global bin)"

cd /mnt/c/git
END

source ~/.zshrc


# Install and set up nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | sudo bash

source ~/.zshrc

