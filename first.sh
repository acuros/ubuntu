#!/bin/sh
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository -y ppa:videolan/stable-daily 
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp 
sudo add-apt-repository -y ppa:gnome3-team/gnome3 
sudo add-apt-repository -y ppa:webupd8team/java 
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager 
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get install y-ppa-manager openjdk-8-jdk flashplugin-installer vim flac mpg321 mpg123 python-dev build-essential make ubuntu-tweak faac virtualbox wine

echo "0 3 * * * ntpdate time.bora.net" > /etc/cron.d/update
echo "0 4 * * * apt-get update; apt-get upgrade" >> /etc/cron.d/update

tar -C $HOME vim.tgz

bash install_pyenv.sh

git config --global user.email "seungyeon@joshua.kim"
git config --global user.name "Seungyeon Joshua Kim"
git config --global core.editor vim
