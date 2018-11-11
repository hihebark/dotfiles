#!/bin/bash
# From evilsocket dofiles. updated!

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
SettingThemeAndIcons(){
  echo "[#] Setting ${bold}arc Theme${norm} ..."
  sudo rm -rf /usr/share/themes/{Arc-Red,Arc-Red-Darker,Arc-Red-Dark}
  rm -rf ~/.local/share/themes/{Arc-Red,Arc-Red-Darker,Arc-Red-Dark}
  rm -rf ~/.themes/{Arc-Red,Arc-Red-Darker,Arc-Red-Dark}
  cd /ui/Theme/arc-theme-Red/
  ./autogen.sh --prefix=/usr
  sudo make install
  echo "[#] Setting ${bold}arc Icon${norm} ..."
  cd ../../../ui/Icon/arc-icon-theme/
  ./autogen.sh --prefix=/usr
  sudo make install
  cd ../../../
}
SettingVim(){
  echo "[#] Getting ${bold}Vim${norm} pluging ..."
  if [ ! -d ./data/vim/bundle/vundle ]; then
    git clone http://github.com/gmarik/vundle.git ./data/vim/bundle/vundle
  fi
  git clone https://github.com/Shougo/neocomplete.vim ~/.vim/bundle/neocomplete.vim
  git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
  git clone https://github.com/Xuyuanp/nerdtree-git-plugin ~/.vim/bundle/nerdtree-git-plugin
  git clone https://github.com/octref/RootIgnore ~/.vim/bundle/RootIgnore
  git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
  git clone https://github.com/ryanoasis/vim-devicons ~/.vim/bundle/vim-devicons
  git clone https://github.com/fatih/vim-go ~/.vim/bundle/vim-go
  git clone https://github.com/terryma/vim-multiple-cursors ~/.vim/bundle/vim-multiple-cursors
  vim +BundleInstall +GoInstallBinaries +qa
}
GettingGO(){
  echo "[#] Installing ${bold}GO${norm} ..."
  GOURL=$(curl -s https://golang.org/dl/ | grep "download downloadBox" | grep "linux" | awk -F '"' '{print $4}')
  wget -c "${GOURL}" -O "$(basename ${GOURL})"
  sudo tar -C /usr/local -xzf $(basename "${GOURL}")
  rm -f $(basename "${GOURL}")
}
echo "[#] sudo apt install ${bold}${PACKAGES[*]}${norm} -y"
read 
#chsh -s /usr/bin/zsh
#SettingVim
#SettingThemeAndIcons
for file in data/*
do
    echo "[#] Linking ${file} to ${bold}~/.$(basename $file)${norm} ..."
    rm -rf ~/.$(basename "${file}")
    ln -s $(pwd)/"${file}" ~/.$(basename "${file}")
done
#GettingGO
