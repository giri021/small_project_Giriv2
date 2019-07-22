#!/bin/bash

jawaban="Y"
read -p "Apakah kamu yakin akan menginstall webserver ? (Y/n) " pilih;

#echo $pilih

if [ $pilih=$jawaban ];
then

    echo "Menyiapkan Instalasi Web server"
    sudo apt-get update
    echo "Melakukan Instalasi Webserver"
    sudo apt-get install -y apache2 php php-mysql
    echo "Melakukan Instalasi Database Server"
    sudo apt-get install -y mysql-server
    echo "Instalasi Selesai"
    exit 0

else
    echo "Instalasi dibatalkan"
    exit 1
fi
