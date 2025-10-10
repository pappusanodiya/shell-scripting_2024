#!/usr/bin/bash

user=$(cat db.csv)

for i in $user
do
  useradd $i
  echo "hello $i, user created.."

done
