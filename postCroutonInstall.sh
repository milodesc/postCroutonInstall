#!/bin/sh


#general tasks
sudo apt-get update
sudo apt-get install xubuntu-restricted-extras -y
sudo apt-get install xfce4-goodies -y


#install productivity applications
sudo apt-get install firefox -y
sudo apt-get install chromium-browser -y
sudo apt-get install libreoffice -y
sudo apt-get install synapse -y


#install development tools
##########################

#guake command line
sudo apt-get install guake -y

#sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update 
sudo apt-get install sublime-text -y

#lamp server
sudo apt-get install apache2 -y
sudo apt-get install php5 libapache2-mod-php5 -y
sudo apt-get install mysql-server mysql-client -y
sudo /usr/sbin/mysqld &
sudo apt-get install phpmyadmin -y
sudo bash -c "echo -e '\n\nInclude /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf"
sudo /etc/init.d/apache2 restart
sudo mv /etc/rc.local /etc/rc.local.bk
sudo cp ./rc.local /etc/rc.local

#git
sudo apt-get install git-core -y
git config --global core.editor "vi"

#sass/compass
sudo apt-get install ruby1.9.1 -y
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
sudo apt-get install gimp gimp-gmic gmic -y
sudo apt-get install gimp-plugin-registry -y
sudo apt-get install gimp-resynthesizer -y

#inkscape -- vector graphics
sudo apt-get install inkscape -y
