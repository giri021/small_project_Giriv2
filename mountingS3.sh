#!/bin/bash

        echo "Update Ubuntu"
        sudo apt-get update
        echo "Install Aplikasi dan sekutunya"
        sudo apt-get install automake autotools-dev fuse g++ git build-essential gcc libfuse-dev libcurl4-openssl-dev libxml2-dev mime-support pkg-config libxml++2.6-dev libssl-dev
        echo "Clone s3fs-fuse.git"
        sudo git clone https://github.com/s3fs-fuse/s3fs-fuse.git
        exit 0
		