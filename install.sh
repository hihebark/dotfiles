#!/bin/bash

# From evilsocket dofiles

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
  grive
)

echo " > sudo apt-get install ${bold}${PACKAGES[*]}${norm} -y"

chsh -s /usr/bin/zsh

for file in data/*
do
    echo "Linking $file to ${bold}~/.$(basename $file)${norm} ..."
    rm -rf ~/.$(basename $file)
    ln -s $(pwd)/$file ~/.$(basename $file)
done

if [ ! -d ./data/vim/bundle/vundle ]; then
    git clone http://github.com/gmarik/vundle.git ./data/vim/bundle/vundle
fi

vim +BundleInstall +GoInstallBinaries +qa
