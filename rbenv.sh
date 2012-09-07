#! /bin/bash

if [ -d ~/.rbenv ]; then
  echo "rbenv already installed... skipping"
else
  # install rbenv
  git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
  #exec $SHELL
  source ~/.bash_profile

  # install ruby build
  mkdir -p ~/.rbenv/plugins
  cd ~/.rbenv/plugins
  git clone git://github.com/sstephenson/ruby-build.git

  # install ruby 1.9.3-p0
  rbenv install 1.9.3-p0

  # set global version of rbenv
  rbenv global 1.9.3-p0

  # Install gem to do automatic rehashing
  gem install rbenv-rehash --no-ri --no-rdoc

  # Install bundler
  gem install bundler
fi
