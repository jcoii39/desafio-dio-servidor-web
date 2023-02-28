#!/bin/bash

echo "Atualizando o servidor..."
apt update
apt upgrade -y

echo "Instalando apache2..."
apt install apache2 -y

echo "Instalando unzip..."
apt install unzip -y

echo "Baixando os arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando os arquivos..."
unzip /tmp/main.zip

echo "Abrindo o diretório..."
cd /tmp/linux-site-dio-main

echo "Copiando os arquivos..."
cp -R /tmp/linux-site-dio-main/* /var/www/html

echo "Fim..."


