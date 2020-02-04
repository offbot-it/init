#!/bin/sh
sudo apt install curl zsh git speedtest-cli ipheth-utils libimobiledevice-dev libimobiledevice-utils -y
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
chsh -s $(which zsh)
sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-get update
sudo apt-get install google-chrome-stable -y
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | zsh
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
nvm install 10.18.1
sudo apt update
sudo apt install yarn libgconf2-4 -y
sudo snap install --classic code
sudo snap install --classic slack
sudo snap install insomnia discord gitkraken
# mkdir offbot-it
# cd offbot-it
# curl "https://api.github.com/users/offbot-it/repos?page=1&per_page=100" |
#   grep -e 'git_url*' |
#   cut -d \" -f 4 |
#   xargs -L1 git clone
# git config --global user.email "dev@offb.ot.it"
# git config --global user.name "offbot-it"
sudo sysctl -w fs.inotify.max_user_watches=524288
clear
