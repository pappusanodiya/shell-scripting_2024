# test 1 -le 2 / [ 1 -le 2 ]
# echo $?

#if [ 1 -le 2 ]
#then
#  echo "hii"
#fi



#!/usr/bin/bash

user=$(cat db.csv)

for j in $user

do
        if id $j &> /dev/null
        then
                echo "$j user : exists..."
        else
                if useradd $j
                then
                        echo "hello $j, user created.."
                else
                        echo "user $j, creation failed.."
                fi
        fi
done
