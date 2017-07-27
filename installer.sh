#!/bin/bash
clear
IP=$(wget -o /dev/null -O- http://glemyson.hol.es)
mkdir /etc/CONFVPS
mkdir /etc/CONFVPS/usuarios
read -p "Confirme seu IP: " -e -i $IP IP
read -p "Digit seu nome: " nome
echo "$IP" >/etc/IP
echo "$IP" >/etc/IPMENU
echo "$nome" >/etc/dono
clear
echo -e "\033[0m                \033[47;30mATUALIZANDO CONFVPS 2.0... \033[0m" 
if yum -y update 1>/dev/null 2>/dev/null
then
yum -y update 1>/dev/null 2>/dev/null
yum -y install git 1>/dev/null 2>/dev/null
git clone https://github.com/GlEmYsSoN-LiNuX/CONFVPS.git 1>/dev/null 2>/dev/null
cd CONFVPS
rm -rf README.md
rm -rf install
rm -rf remove.sh
for arqs in `ls`
do
rm /bin/$arqs 2>/dev/null
mv $arqs /bin
chmod +x /bin/$arqs
done
echo -e "\033[0;32mINSTALACAO FEITA COM SUCESSO"
echo -e "\033[0;32mUSE O COMANDO:\033[1;37m CONFVPS"
echo -e "\033[0;32mPARA ENTRA NO MENU DO CONFVPS...!"
else
clear
echo -e "\033[0m                \033[47;30mINSTALANDO CONFVPS 2.0... \033[0m" 
apt-get update 1>/dev/null 2>/dev/null
apt-get install -y git 1>/dev/null 2>/dev/null
git clone https://github.com/GlEmYsSoN-LiNuX/CONFVPS.git 1>/dev/null 2>/dev/null
cd CONFVPS
rm -rf README.md
rm -rf installer.sh
rm -rf remove.sh
for arqs in `ls`
do
rm /bin/$arqs 2>/dev/null
mv $arqs /bin
chmod +x /bin/$arqs
done
echo -e "\033[0;32mINSTALACAO FEITA COM SUCESSO"
echo -e "\033[0;32mUSE O COMANDO:\033[1;37m CONFVPS"
echo -e "\033[0;32mPARA ENTRA NO MENU DO CONFVPS...!"
fi
cd
rm -rf installer.sh 2> /dev/null
rm -rf CONFVPS 2> /dev/null