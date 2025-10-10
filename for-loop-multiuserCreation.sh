#!/usr/bin/bash
user=$@
for j in $user
do
  useradd $j
  echo "hello $j, user created .."
done
