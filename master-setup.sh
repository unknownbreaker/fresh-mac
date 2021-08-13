#!/bin/bash

mkdir ~/bin
# pushd ./homedir
# ./copy.sh
# popd
# pushd ./system-preferences
# ./copy.sh
# popd
cd ./homebrew
./install-homebrew.sh
cd ..
./install-global-npm-packages.sh
# pushd vscode
# ./install-vscode-extensions.sh
# popd
# pushd ./homedir
# ./setup-global-gitignore.sh
# popd
pushd ./zsh
sudo ./setupzsh.sh
popd
pushd ./node
sudo ./setupnode.sh
popd
pushd ./python
sudo ./setuppython.sh
popd

