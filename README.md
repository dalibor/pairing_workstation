# Pairing Workstation

Scripts for setting up Vagrant pairing workstation (Ubuntu 12.04) with rbenv, git, tmux, ack-grep, postgresql, sqlite3, nodejs and dependencies like: libxml2 libxml2-dev, libxslt-dev, libqt4-dev libqtwebkit-dev, libpq-dev, libsqlite3-dev, librmagick-ruby libmagickwand-dev, imagemagick.

On top of this you'll need some [dotfiles](https://github.com/dalibor/dotfiles/) and [vimfiles](https://github.com/dalibor/vimfiles/).

## Prerequisites

### Virtual Box

```bash
sudo apt-get install virtualbox
```
### Vagrant box with Ubuntu 12.04

```bash
gem install vagrant
vagrant box add pairing_workstation http://files.vagrantup.com/precise32.box
# vagrant box add pairing_workstation ~/Downloads/precise32.box
mkdir pairing_workstation && cd pairing_workstation
vagrant init pairing_workstation
vagrant up
vagrant ssh
```
#### Customize vagrant box
  Following config will setup Vagrant box with 2GB of memory and forward port 2222 of the host machine to port 22 of the virtual box. That means when people SSH to your machine on port 2222 they will be redirected to the vagrant box where you have the pairing workstation setup.

  You might need to do port forwarding on the router to forward port to your machine (example: 3333 -> 2222) if you are not connected directly on the internet with the host machine.

```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "pairing_workstation"
  config.vm.customize ["modifyvm", :id, "--memory", 2048]
  config.vm.forward_port 22, 2222
end
```

## Installation

```bash
git clone git://github.com/dalibor/pairing_workstation.git
cd pairing_workstation
./ubuntu_12_04_mix.sh ./rbenv.sh && source ~/.bash_profile
```

or

```bash
sudo apt-get install curl -y
curl https://raw.github.com/siyelo/pairing_workstation/master/ubuntu_12_04_mix.sh | bash && \
curl https://raw.github.com/siyelo/pairing_workstation/master/rbenv.sh | bash && \
source ~/.bash_profile
```
