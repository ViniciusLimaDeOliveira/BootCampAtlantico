#!/bin/bash

echo "Atualizando o servidor"

sudo apt-get update -y
sudo apt-get updgrade -y

echo "Instalando o Apache"

sudo apt-get install apache2 -y

echo "Instalando o Unzip"

sudo apt-get install zip unzip -y

echo "Instalando a aplicação "

cd /tmp
sudo wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
sudo cp -R * /var/www/html


echo "Mostrar os ips da maquina..."
sudo ip a
echo "Deployed ..." 
