#!/bin/bash

jawaban="Y"

read -p " Apakah anda yakin untuk menghapus instalasi webserver? (Y/n)" pilih;

if [ $pilih==$jawaban ];
then    
		echo "=================================================================="
		echo "Tampilkan status layanan apache2"
		echo "=================================================================="
		/etc/init.d/apache2 status
		/etc/init.d/mysql status
		echo "=================================================================="		
        echo " Remove Layanan di Webserver"
		echo "=================================================================="
        apt-get remove apache2*
		apt-get auto-remove apache2*
		apt-get purge apache2*
        rm -rf /etc/apache2; rm -rf /etc/php; rm -rf /var/lib/mysql; rm etc/mysql
        echo "=================================================================="
		echo "Uninstall selesai"
		echo "=================================================================="
		echo "=================================================================="
		echo " Pastikan Direktori Apache2, PHP5, Mysql Terhapus"
		echo "=================================================================="
		whereis apache2
		whereis php
		whereis mysql
        exit 0
else
		echo "=================================================================="
        echo "Setup dibatalkan"
		echo "=================================================================="
        exit 1
fi

