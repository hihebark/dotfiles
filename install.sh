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
  weechat
  gnupg2
  sassc
  inkscape
  autoconf
  libpcap-dev
)

SettingThemeAndIcons(){
  echo "[!] Setting ${bold}Arc Theme${norm} ..."
  sudo rm -rf /usr/share/themes/{Arc-Red,Arc-Red-Darker,Arc-Red-Dark}
  rm -rf ~/.local/share/themes/{Arc-Red,Arc-Red-Darker,Arc-Red-Dark}
  rm -rf ~/.themes/{Arc-Red,Arc-Red-Darker,Arc-Red-Dark}
  cd ./ui/Theme/
  git clone https://github.com/arc-design/arc-theme --depth 1 
  cd arc-theme/
  ./autogen.sh --prefix=/usr
  sudo make install
  echo "[!] Setting ${bold}arc Icon${norm} ..."
  cd ../../Icon
  git clone https://github.com/horst3180/arc-icon-theme --depth 1
  cd arc-icon-theme/
  ./autogen.sh --prefix=/usr
  sudo make install
  cd ../../../
}
SettingVim(){
  echo "[!] Getting ${bold}Vim${norm} pluging ..."
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
}
GettingGO(){
  echo "[!] Installing ${bold}GO${norm} ..."
  GOURL=$(curl -s https://golang.org/dl/ | grep "download downloadBox" | grep "linux" | awk -F '"' '{print $4}')
  wget -c "${GOURL}" -O "$(basename ${GOURL})"
  sudo tar -C /usr/local -xzf $(basename "${GOURL}")
  rm -f $(basename "${GOURL}")
}

echo "[!] Do you want to install these packages: [${bold}${PACKAGES[*]}${norm}]? y/(*):"
read choice
if (( "$choice" == "y" )); then
    sudo apt install ${PACKAGES[*]}
else
    echo "[!] Skipping..."
fi

chsh -s /usr/bin/zsh

SettingThemeAndIcons
SettingVim
GettingGO

echo "[#] Linking ${bold}Dots${norm}"

for file in data/*
do
    echo "[#] Linking ${file} to ${bold}~/.$(basename $file)${norm} ..."
    rm -rf ~/.$(basename "${file}")
    ln -s $(pwd)/"${file}" ~/.$(basename "${file}")
done
vim +BundleInstall +GoInstallBinaries +qa
