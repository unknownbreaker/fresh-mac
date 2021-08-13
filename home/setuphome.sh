#!/bin/bash

cd ~/Documents
echo "In $(pwd)"

if [! -e Repos]
  mkdir Repos
fi

cd Repos

if [! -e Configs]
  git clone https://github.com/unknownbreaker/Configs.git
fi

cd ~

if [ -f .zshrc ]
  mv .zshrc .zshrc_old
  ln -s ~/Documents/Repos/Configs/Zsh/.zshrc .zshrc
fi
if [! -e .zshrc]
  ln -s ~/Documents/Repos/Configs/Zsh/.zshrc .zshrc
fi

if [ -f .oh-my-zsh ]
  mv .oh-my-zsh .oh-my-zsh_old
  ln -s ~/Documents/Repos/Configs/Zsh/.oh-my-zsh .oh-my-zsh
fi
if [ ! -e .oh-my-zsh ]
  ln -s ~/Documents/Repos/Configs/Zsh/.oh-my-zsh .oh-my-zsh
fi

if [ ! -e .tmux ]
  ln -s ~/Documents/Repos/Configs/Tmux/.tmux .tmux
fi
if [ ! -e .tmux.conf ]
  ln -s ~/Documents/Repos/Configs/Tmux/.tmux.conf .tmux.conf
fi

cd .config
if [ ! -e karabiner ]
  ln -s ~/Documents/Repos/Configs/Karabiner/ karabiner
fi
  
cd ..



