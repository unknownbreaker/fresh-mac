#!/bin/bash

cd ~/Documents
echo "In $(pwd)"

if [! -e Repos]; then
  mkdir Repos
fi

cd Repos

if [! -e Configs]; then
  git clone https://github.com/unknownbreaker/Configs.git
fi

cd ~

if [ -f .zshrc ]; then
  mv .zshrc .zshrc_old
  ln -s ~/Documents/Repos/Configs/Zsh/.zshrc .zshrc
fi
if [! -e .zshrc]; then
  ln -s ~/Documents/Repos/Configs/Zsh/.zshrc .zshrc
fi

if [ -f .oh-my-zsh ]; then
  mv .oh-my-zsh .oh-my-zsh_old
  ln -s ~/Documents/Repos/Configs/Zsh/.oh-my-zsh .oh-my-zsh
fi
if [ ! -e .oh-my-zsh ]; then
  ln -s ~/Documents/Repos/Configs/Zsh/.oh-my-zsh .oh-my-zsh
fi

if [ ! -e .tmux ]; then
  ln -s ~/Documents/Repos/Configs/Tmux/.tmux .tmux
fi
if [ ! -e .tmux.conf ]; then
  ln -s ~/Documents/Repos/Configs/Tmux/.tmux.conf .tmux.conf
fi

cd .config
if [ ! -e karabiner ]; then
  ln -s ~/Documents/Repos/Configs/Karabiner/ karabiner
fi
  
cd ..



