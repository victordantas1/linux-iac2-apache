#!/bin/bash

echo "Atualizando o sistema..."
apt update
apt upgrade

echo "Instalando o Apache e Unzip..."
apt install apache2 -y
apt install unzip -y

echo "Alterando o diretorio para /tmp..."
cd /tmp

echo "Baixando, descompactando e movendo site para colocar no servidor..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/



