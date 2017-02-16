#!/bin/bash
clear
IP=$(wget -O- http://glemyson.hol.es -o /dev/null)
read -p "Confirme seu IP : " -e -i $IP IP
echo "$IP" >/etc/IP
read -p "Qual seu nome? : " nome
echo "$nome" >/etc/dono
clear
echo " INSTALANDO CONFVPS 2.0"
apt-get install sudo -y 1>/dev/null 2>/dev/null
yum -y install sudo 1>/dev/null 2>/dev/null
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/squid3-installer 1>/dev/null 2>/dev/null
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/addhost 1>/dev/null 2>/dev/null
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/create-user 1>/dev/null 2>/dev/null
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/user-del 1>/dev/null 2>/dev/null
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/monitor 1>/dev/null 2>/dev/null
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/limite 1>/dev/null 2>/dev/null 
wget https://raw.githubusercontent.com/glemysson-Hacker/GlEmYsSoN/master/CONFVPS 1>/dev/null 2>/dev/null
chmod +x squid3-installer
chmod +x addhost
chmod +x create-user
chmod +x limite
chmod +x monitor
chmod +x user-del
chmod +x CONFVPS
mv squid3-installer /bin
mv addhost /bin
mv create-user /bin
mv limite /bin
mv monitor /bin
mv user-del /bin
mv CONFVPS /bin
sleep 2
echo "CONFVPS 2.0 INSTALADO COM SUCESSO"
sleep 3
echo "EXECULTE COM O COMANDO [ CONFVPS ]"
sleep 2
echo "COMANDO: CONFVPS"
sleep 3