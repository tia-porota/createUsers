#!/bin/bash

echo @@@@@@@@@@@@@@@@@@@@@
echo + User Creator v0.44 +
echo @@@@@@@@@@@@@@@@@@@@@
echo
echo

echo Welcome, please select your desired option
echo "1. Permanent User"
echo "2. Temp User (n days)"
echo

read option

case $option in
  1)
	read -p "Enter the new users name: " username
	sudo useradd $username
	echo User $username created succesfully
	;;
  2)
	read -p "Enter the new users name: " username
	
	
	read -p "Enter how many days the user will be available: " days
	expiredate=$( date -d "+$days days" -u +%Y-%m-%d )
	
	
	sudo useradd $username -e $expiredate
	echo User $username created succesfully, it will expire on $expiredate
	;;
  *)
	echo "Invalid Option"
esac


read -sp "Press 'Enter' to exit"


