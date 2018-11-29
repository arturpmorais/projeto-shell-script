#!/bin/bash
clear

declare -i escolha=1

while [ $escolha -eq 1 ];
do
	clear
	echo "Projeto Shell Script"
	echo
	echo "Digite a opcao desejada: "
	echo
	echo "1. Criar grupo"
	echo "2. Alterar o nome de um grupo"
	echo "3. Criar um usuario"
	echo "4. Modificar o dono de um arquivo/diretorio"
	echo "5. Modificar o grupo dono de um arquivo/diretorio"
	echo "6. Modificar as permissoes de um arquivo/diretorio"
	echo
	echo "7. Terminar programa"
	read opcao

	case $opcao in
		1) clear
		   echo "Digite o nome do grupo: "
		   read grupo

		   groupadd $grupo

		   echo "Operacao concluida!"

			;;

		2) clear
		   echo "Digite nome do grupo que deseja mudar: "
		   read grupo

		   echo "Digite o novo nome para este grupo: "
		   read nome

		   groupmod -n $nome $grupo

		   echo "Operacao concluida!"

			;;

		3) clear
		   echo "Digite o nome do usuario: "
		   read usuario

		   useradd $usuario

		   echo "Operacao concluida!"

			;;

		4) clear
		   echo "Digite o nome do arquivo/diretorio desejado: "
		   read arq

		   echo "Digite o nome do novo usuario dono deste arquivo/diretorio: "
		   read nome

		   chown $nome -R $arq

		   echo "Operacao concluida!"

			;;

		5) clear
		   echo "Digite o nome do arquivo/diretorio desejado: "
		   read arq

		   echo "Digite o nome do novo grupo dono deste arquivo/diretorio: "
		   read grupo

		   chgrp $grupo -R $arq

		   echo "Operacao concluida!"

			;;

		6) clear
		   echo "Modificacao de permissoes"
		   echo
		   echo "Digite o nome do arquivo/pasta: "
		   echo

		   read nome

		   clear
		   echo "Digite a opcao desejada para o dono: "
		   echo
		   echo "0. Nenhuma permissao"
		   echo "1. Execucao"
		   echo "2. Escrita"
		   echo "3. Escrita e execucao"
		   echo "4. Leitura"
		   echo "5. Leitura e execucao"
		   echo "6. Leitura e escrita"
		   echo "7. Leitura, escrita e execucao" 

		   read ownr

		   clear
		   echo "Digite a opcao desejada para o grupo: "
		   echo
		   echo "0. Nenhuma permissao"
		   echo "1. Execucao"
		   echo "2. Escrita"
		   echo "3. Escrita e execucao"
		   echo "4. Leitura"
		   echo "5. Leitura e execucao"
		   echo "6. Leitura e escrita"
		   echo "7. Leitura, escrita e execucao" 

		   read grup

		   clear
		   echo "Digite a opcao desejada para os outros: "
		   echo
		   echo "0. Nenhuma permissao"
		   echo "1. Execucao"
		   echo "2. Escrita"
		   echo "3. Escrita e execucao"
		   echo "4. Leitura"
		   echo "5. Leitura e execucao"
		   echo "6. Leitura e escrita"
		   echo "7. Leitura, escrita e execucao" 

		   read outr

		   chmod $ownr$grup$outr $nome

		   echo "Operacao concluida!"
			;;

		7) clear
		   escolha=0
			;;

		*) echo "Opcao invalida!";;
	esac
done