#!/bin/sh
sudo apt install curl zsh git -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | zsh
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
nvm install 9
nvm install 10.18.1
sudo apt update
sudo apt install yarn libgconf2-4 -y
sudo snap install --classic code insomnia discord
mkdir offbot-it
cd offbot-it
curl "https://api.github.com/users/offbot-it/repos?page=1&per_page=100" |
  grep -e 'git_url*' |
  cut -d \" -f 4 |
  xargs -L1 git clone
git config --global user.email "dev@offb.ot.it"
git config --global user.name "offbot-it"
clear
