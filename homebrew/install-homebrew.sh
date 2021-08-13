#!/bin/bash

# Deprecated /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if [ -e /usr/local/bin/brew ]
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  sudo chown -R `whoami`:admin /usr/local/bin
  sudo chown -R `whoami`:admin /usr/local/share
  sudo chown -R `whoami`:admin /usr/local/opt
fi


# source ../util/setBrewPrefix.sh

# "${brewPrefix}/bin/brew" bundle install
brew bundle 

# sudo chmod -R 755 "${brewPrefix}/" # https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories

# Package-specific
# sudo ln -sfn "${brewPrefix}/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
