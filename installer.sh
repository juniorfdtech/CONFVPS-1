#!/bin/bash

cd

if [ $(id -u) -eq 0 ]
then
        clear
else
        if echo $(id) |grep sudo > /dev/null
        then
        clear
        echo "Voce não é root"
        echo "Seu usuario esta no grupo sudo"
        echo -e "Para virar root e fazer a instalação execute \033[1;31msudo su\033[0m"
        exit
        else
        clear
        echo -e "Vc pecisa esta como root para poder fazer a instalção, Para virar root execute \033[1;31msu\033[0m e digite sua senha root"
        exit
        fi
fi
apt-get update -y 1>/dev/null 2>/dev/null
apt-get install wget -y 1>/dev/null 2>/dev/null
IP=$(wget -O- http://glemyson.hol.es -o /dev/null)
read -p "Confirme Seu IP: " -e -i $IP IP
read -p "Digite Seu Nome: " nome
echo "$IP" >/etc/IP
echo "$nome" >/etc/dono
clear
echo -e "\033[0m                \033[47;30mINSTALANDO CONFVPS 2.0... \033[0m" 
if yum -y update 1>/dev/null 2>/dev/null
then
yum -y update 1>/dev/null 2>/dev/null
yum -y install git 1>/dev/null 2>/dev/null
git clone https://github.com/glemysson-Hacker/GlEmYsSoN.git 1>/dev/null 2>/dev/null
cd GlEmYsSoN
rm -rf README.md
rm -rf install
rm -rf remove.sh
for arqs in `ls`
do
rm /bin/$arqs 2>/dev/null
mv $arqs /bin
chmod +x /bin/$arqs
done
echo -e "\033[1;33mConcluido, Execute o comando \033[1;32mCONFVPS\033[1;33m como root \033[0m"
else
clear
echo -e "\033[0m                \033[47;30mINSTALANDO CONFVPS 2.0... \033[0m" 
apt-get update 1>/dev/null 2>/dev/null
apt-get install -y git 1>/dev/null 2>/dev/null
git clone https://github.com/glemysson-Hacker/GlEmYsSoN.git 1>/dev/null 2>/dev/null
cd GlEmYsSoN
rm -rf README.md
rm -rf installer.sh
rm -rf remove.sh
for arqs in `ls`
do
rm /bin/$arqs 2>/dev/null
mv $arqs /bin
chmod +x /bin/$arqs
done
echo -e "\033[1;37mConcluido, Execute o comando \033[1;33mCONFVPS\033[1;37m como root \033[0m"
fi
cd
rm -rf installer.sh 2> /dev/null
rm -rf GlEmYsSoN 2> /dev/null