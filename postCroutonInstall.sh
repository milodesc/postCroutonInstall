#!/bin/sh


#general tasks
sudo apt-get update
sudo apt-get install xubuntu-restricted-extras
sudo apt-get install xfce4-goodies


#install productivity applications
sudo apt-get install firefox
sudo apt-get install chromium-browser
sudo apt-get install libreoffice
sudo apt-get install synapse


#install development tools
##########################

#guake command line
sudo apt-get install guake

#sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text

#lamp server
sudo apt-get install apache2
sudo apt-get install php5 libapache2-mod-php5
sudo apt-get install mysql-server mysql-client 
sudo /usr/sbin/mysqld &
sudo apt-get install phpmyadmin
sudo bash -c "echo -e '\n\nInclude /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf"
sudo /etc/init.d/apache2 restart

#git
sudo apt-get install git-core
git config --global core.editor "vi"

#sass/compass
sudo apt-get install ruby1.9.1
sudo gem install sass
sudo gem install compass

#grab script for spinning new sites
cd /usr/local/bin
sudo git clone https://github.com/milodesc/createNewDevSite.git


#install design tools
#####################

#gimp -- raster graphics
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp gimp-gmic gmic
sudo apt-get install gimp-plugin-registry
sudo apt-get install gimp-resynthesizer

#inkscape -- vector graphics
sudo apt-get install inkscape
