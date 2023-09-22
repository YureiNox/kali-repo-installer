#!/bin/bash

sudo apt update 
sudo apt upgrade

sudo apt install wget

cd /etc/apt/sources.list.d
touch kali.list

echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee /etc/apt/sources.list.d/kali.list

cd

wget http://http.kali.org/pool/main/k/kali-archive-keyring/kali-archive-keyring_2022.1_all.deb

cd Downloads/

sudo apt install ./kali-archive-keyring_2022.1_all.deb

sudo apt update