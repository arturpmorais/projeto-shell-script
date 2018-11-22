#!/bin/bash
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
read opcao

case $opcao in
1) clear
   echo "Digite o nome do grupo: "
   read grupo

   sudo groupadd $grupo

   echo "Operacao concluida!";;

2) clear
   echo "Digite nome do grupo que deseja mudar: "
   read grupo

   echo "Digite o novo nome para este grupo: "
   read nome

   groupmod -n $nome $grupo

   echo "Operacao concluida!";;

3) clear
   echo "Digite o nome do usuario: "
   read usuario

   sudo adduser $usuario

   echo "Operacao concluida!";;

4) echo "quatro";;

5) echo "cinco";;

6) echo "seis";;

*) echo "Opcao invalida!";;
esac