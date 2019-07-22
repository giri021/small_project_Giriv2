!/bin/bash

jawaban="Y"

read -p "Apakah kamu yakin akan melakukan setup Aplikasi Web? (Y/n) " pilih;

if [ $pilih = $jawaban ];
then
        echo "=============================>"
        echo "Downloading Data"
        echo "=============================>"
        cd
        wget https://github.com/sdcilsy/sosial-media/archive/master.zip
        echo "=============================>"
        echo "Ekstrak File"
        echo "=============================>"
        unzip master.zip
        echo "=============================>"
        echo "Memindahkan data"
        echo "=============================>"
        sudo rm -Rf /var/www/html/*
        sudo mv sosial-media-master/* /var/www/html
        echo "Setup Selesai"
        exit 0
else
        echo "Setup dibatalkan"
        exit 1
fi
