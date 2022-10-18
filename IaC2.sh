#!/bin/bash
echo "Atualizando o servidor ..."
apt update && apt upgrade -y
echo "Baixando os softwares necessários..."
apt install apache2 -y && apt install unzip -y
cd /tmp
echo "Baixando os arquivos da aplicação..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
echo "Copiando os arquivos da aplicação para a pasta do Apache..."
cp -R /tmp/linux-site-dio-main/* /var/www/html
