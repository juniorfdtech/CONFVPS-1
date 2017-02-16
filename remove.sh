#!/bin/bash
clear
echo -e "\033[0m           \033[47;30mRemovedor do CONFVPS \033[0m";
sleep 2

echo -e "\033[1;31m       Removendo modulos"
rm /bin/create-user >/dev/null
rm /bin/limite >/dev/null
rm /bin/squid3-installer >/dev/null
rm /bin/addhost >/dev/null
rm /bin/monitor >/dev/null
rm /bin/user-del >/dev/null
sleep 3


echo -e "\033[1;31m      Removendo CONFVPS"
rm /bin/CONFVPS >/dev/null
sleep 3


echo -e "\033[1;31m       Remoção terminada com sucesso!"
exit