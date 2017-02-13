#!/bin/bash
clear
IP=$(wget -O- https://glemysson.000webhostapp.com/IPS/ip.php -o /dev/null)
#cores
corPadrao="\033[0m"
preto="\033[0;30m"
vermelho="\033[0;31m"
verde="\033[0;32m"
amarelo="\033[0;33m"
azul="\033[0;34m"
purple="\033[0;35m"
cyan="\033[0;36m"
cinzaa="\033[0;37m"
pretoCinza="\033[1;30m"
vermelhoo="\033[1;31m"
verdee="\033[1;32m"
amareloo="\033[1;33m"
azull="\033[4;34m"
rosa="\033[1;35m"
cyann="\033[2;36m"
branco="\033[1;37m"
cyann="\033[2;36m"
# BY: Glemysson
echo -e "$branco"
read -p "Qual nome? : " nome
read -p "Qual senha? : " senha
read -p "Dias para expirar: " dias
clear
validade=$(date '+%C%y/%m/%d' -d " +$dias days")
validadebr=$(date '+%d/%m/%C%y' -d " +$dias days")

sudo useradd -M -s /bin/false $nome -e $validade 1>/dev/null 2>/dev/null

(echo $senha ; echo $senha) | passwd $nome 1>/dev/null 2>/dev/null

echo -e ""$verde"Conta Criada com Sucesso"
echo " "
echo -e ""$amarelo"IP:"$branco" $IP"
echo -e ""$amarelo"Portas SSH:"$branco" 443 e 22"
echo -e ""$amarelo"Login:"$branco" $nome"
echo -e ""$amarelo"Senha:"$branco" $senha"
echo -e ""$amarelo"Proxy:"$branco" $IP"
echo -e ""$amarelo"Portas:"$branco" 8080 80 8799 e 3128"
echo -e ""$amarelo"Validade:"$branco" $validadebr"
