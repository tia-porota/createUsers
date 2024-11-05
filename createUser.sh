#!/bin/bash

echo @@@@@@@@@@@@@@@@@@@@@
echo + User Creator v0.4 +
echo @@@@@@@@@@@@@@@@@@@@@
echo
echo

echo Bienvenide, ingrese la opción adecuada
echo "1. Usuario permanente"
echo "2. Usuario temporal (x días)"
echo

read option

case $option in
  1)
	read -p "Ingrese el nombre de usuario a crear: " username
	sudo useradd $username
	echo Usuario $username creado con éxito
	;;
  2)
	read -p "Ingrese el nombre de usuario a crear: " username
	
	
	read -p "Ingrese la cantidad de días en el que el usuario expirará: " days
	expiredate=$( date -d "+$days days" -u +%Y-%m-%d )
	
	
	sudo useradd $username -e $expiredate
	echo Usuario $username creado con éxito, expirará el $expiredate
	;;
  *)
	echo "Opción Inválida"
esac


read -sp "Presione enter para salir"


