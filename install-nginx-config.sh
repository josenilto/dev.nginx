#!/bin/bash

echo ""
echo "INICIANDO O PROCESSO..."
echo ""

echo ""
echo "Atualizando o sistema..."
echo ""

sudo um -y update && sudo yum -y upgrade &&

echo ""
echo "Atualizando o sistema..."
echo ""

sudo yum -y install epel-release &&

echo ""
echo "Instalar o nginx..."
echo ""

sudo yum -y install nginx &&

echo ""
echo "Inicializar com  sistema..."
echo ""

sudo systemctl start nginx.service  -y &&

echo ""
echo "Liberando a porta http..."
echo ""

sudo firewall-cmd --permanent --zone=public --add-service=http &&

echo ""
echo "Liberando a porta https..."
echo ""

sudo firewall-cmd --permanent --zone=public --add-service=https &&

echo ""
echo "Atualizando o firewall..."
echo ""

sudo firewall-cmd --reload

echo ""

