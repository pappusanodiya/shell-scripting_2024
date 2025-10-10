#!/usr/bin/bash

read -p "enter ur username to lock and backup: " user

if [ -z $user ]
then	
	echo "username is not provided"
else
	if id $user &> /dev/null
	then
		passwd -l $user
	else
		echo "provided user $user not exists..."
	fi
fi
