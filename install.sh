#!/bin/bash

#Setup RVM
curl -sSL https://get.rvm.io | bash -s stable --ruby

#Setup oh-my-sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


#Setup Brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Install all brew packages
brew install task taskd tasksh
brew install the_silver_searcher
brew install pandoc
brew install openssl
brew install git-crypt
brew install ghi
brew install lastpass-cli
brew install imagemagick


#Setup Brew Cask
brew install caskroom/cask/brew-cask

#All brew cask packages
brew cask install firefox
brew cask install google-chrome
brew cask install thunderbird



#Asking for permission to restart after installing everything
sudo shutdown -r now
