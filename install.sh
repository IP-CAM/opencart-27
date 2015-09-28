#!/bin/bash

echo "Type the web root directory of opencart (e.g. /var/www/opencart), followed by [ENTER]:"
read www_path

owner=`ls -ld $www_path | awk '{print $3}'`
group=`ls -ld $www_path | awk '{print $4}'`
login=`whoami`

if [ ! `groups | grep $group` ] && [ "$login" != "$owner" ]
then
  echo
  echo "You don't have enough permissions to write into $www_path directory"
  echo "Please, add your user to the '$group' group to get permissions to copy files into $www_root directory"
  echo "You can do this by:"
  echo "> sudo usermod -g $group $login"
  echo "Please, log in again for the change to take effect"
  exit 1
fi

if [ ! -f v2.5.1-opencart.zip.tar.gz ]
then wget https://github.com/vqmod/vqmod/archive/v2.5.1-opencart.zip.tar.gz
fi
tar xzfv v2.5.1-opencart.zip.tar.gz

if [ ! -f start-0.0.1.tar.gz ]
then wget https://github.com/payfort/opencart/archive/start-0.0.1.tar.gz
fi
tar xzfv start-0.0.1.tar.gz

cp -r vqmod-2.5.1-opencart.zip/vqmod $www_path
cp -r vqmod-2.5.1-opencart.zip/platforms/opencart/* $www_path/vqmod/
chmod 774 $www_path/vqmod

mkdir $www_path/vqmod/vqcache
chmod 774 $www_path/vqmod/vqcache

cp -r opencart-start-0.0.1/upload/* $www_path
echo "Payfort Start and vqmod plugins were installed"
echo "Please, to enable vqmod open your site like this: http://yoursite.com/vqmod/install"
