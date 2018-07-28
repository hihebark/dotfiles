#!/bin/bash
#From evilsocket dofiles

bold=$(tput bold)
norm=$(tput sgr0)

PACKAGES=( 
  htop 
  cryptsetup
  ack
  git
  vim-nox
  lm-sensors 
  gawk 
  zsh
  screen
  tmux
  build-essential 
  libpcap-dev
)

echo "[#] sudo apt install ${bold}${PACKAGES[*]}${norm} -y"
read 
chsh -s /usr/bin/zsh

for file in data/*
do
    echo "[#] Linking $file to ${bold}~/.$(basename $file)${norm} ..."
    rm -rf ~/.$(basename $file)
    ln -s $(pwd)/$file ~/.$(basename $file)
done

if [ ! -d ./data/vim/bundle/vundle ]; then
    git clone http://github.com/gmarik/vundle.git ./data/vim/bundle/vundle
fi
echo "[#] Setting ${bold}Vim${norm} pluging ..."
git clone https://github.com/Shougo/neocomplete.vim ~/.vim/bundle/neocomplete.vim
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
git clone https://github.com/Xuyuanp/nerdtree-git-plugin ~/.vim/bundle/nerdtree-git-plugin
git clone https://github.com/octref/RootIgnore ~/.vim/bundle/RootIgnore
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons
git clone https://github.com/fatih/vim-go ~/.vim/bundle/vim-go
git clone https://github.com/terryma/vim-multiple-cursors ~/.vim/bundle/vim-multiple-cursors

vim +BundleInstall +GoInstallBinaries +qa

echo "[#] Installing go ..."
cd ~/Downloads
wget -c $(curl -s https://golang.org/dl/ | grep "download downloadBox" | grep "linux" | awk -F '"' '{print $4}')
sudo tar -C /usr/local -xzf go1.*.*.linux-amd64.tar.gz
