clear
if cat /etc/IPMENU | grep OCULTADO; then
echo -e 'IP JA FOI OCULTADO DO MENU'
sleep 0.4
echo -e -n 'DESEJA DESOCULTAR IP s/n:';read n
sleep 0.4
   if [[ "$n" = 'n' ]]; then
   	echo -e 'Saindo...'
   	sleep 0.5
   	exit
  fi
   if [[ "$n" = 's' ]]; then
    echo -e 'IPMENU OCULTAR, OPCAO EM TESTES CASO DE
    FALHA CONTATE O AUTOR DO SCRIPT'
    sleep 0.5
    echo -e ''
    echo -e 'Desocultando ip...'
    ip=$(cat /etc/IP)
    echo "$ip" >/etc/IPMENU
     if cat /etc/IPMENU |grep $ip;then
     	echo -e 'IP DESOCULTADO DO MENU'
     	sleep 1
     	echo -e 'Saindo...'
     	sleep 0.4
     	exit
     else
     	echo -e 'Falha ao desocultar ip...'
     	sleep 0.5
     	echo -e 'saindo...'
     	sleep 0.5
     	exit
     fi
   fi
fi
    echo -e 'IPMENU OCULTAR, OPCAO EM TESTES CASO DE
    FALHA CONTATE O AUTOR DO SCRIPT'
    sleep 0.5
    echo -e ''
    echo -e 'Ocultando ip...'
    echo "OCULTADO" >/etc/IPMENU
     if cat /etc/IPMENU |grep OCULTAD; then
     	echo -e 'IP OCULTADO COM SUCESSO'
     else
     	echo -e 'Falha ao ocultar ip...'
     	sleep 0.5
     	echo -e 'Saindo...'
     	sleep 0.5
     	exit 69
     fi