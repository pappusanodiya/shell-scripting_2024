#!/usr/bin/bash

read -p "enter ur username to lock and backup : " user

if [ -z $user ]
then
	echo "username is not provided
else
	if id $user &> /dev/null
	then
		passwd -l $user
		homeDir=$(grep ^${user}: /etc/passwd | cut -d ":" -f 6
		echo $homeDir
		if [ -d $homeDir ]
		then 	
			echo "home dir exists..."
		fi
		exit 0
	else
		echo "provided user $user not exists.."

	fi
fi
