#! /bin/bash

# Update source list
sudo apt-get update

# Install build essential
sudo apt-get install build-essential -y

# Install curl
sudo apt-get install curl -y

# Install git
sudo apt-get install git -y

# Install tmux
sudo apt-get install tmux -y

# Install ack-grep
sudo apt-get install ack-grep -y

# XML & XSLT (Nokogiri dependency)
sudo apt-get install libxml2 libxml2-dev -y
sudo apt-get install libxslt-dev -y

# Qt (Capybara Webkit dependency)
sudo apt-get install libqt4-dev libqtwebkit-dev -y

# PostgreSQL (pg gem dependencies)
sudo apt-get install libpq-dev -y

# Install PostgreSQL
sudo apt-get install postgresql -y

# Use md5 for PostgreSQL connection
sudo sed -i 's/local   all             all                                     peer/local   all             all                                     md5/g' /etc/postgresql/9.1/main/pg_hba.conf

# Restart PostgreSQL
sudo /etc/init.d/postgresql restart

# Install sqlite3
sudo apt-get install sqlite3 libsqlite3-dev -y

# RMagic
sudo apt-get install imagemagick librmagick-ruby libmagickwand-dev -y

# Install node.js (Rails assets pipeline dependency)
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update
sudo apt-get install nodejs -y
