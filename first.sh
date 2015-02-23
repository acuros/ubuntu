#!/bin/sh
wget http://archive.getdeb.net/install_deb/getdeb-repository_0.1-1~getdeb1_all.deb 
sudo dpkg -i getdeb-repository_0.1-1~getdeb1_all.deb 
rm -f getdeb-repository_0.1-1~getdeb1_all.deb


wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo add-apt-repository -y ppa:videolan/stable-daily 
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp 
sudo add-apt-repository -y ppa:gnome3-team/gnome3 
sudo add-apt-repository -y ppa:webupd8team/java 
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager 
sudo add-apt-repository -y ppa:ubuntu-wine/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install vlc gimp gimp-data gimp-plugin-registry gimp-data-extras y-ppa-manager openjdk-8-jdk flashplugin-installer vim flac mpg321 mpg123 python-dev git ubuntu-tweak faac virtualbox wine

echo "0 3 * * * ntpdate time.bora.net" > /etc/cron.d/update
echo "0 4 * * * apt-get update; apt-get upgrade" >> /etc/cron.d/update

