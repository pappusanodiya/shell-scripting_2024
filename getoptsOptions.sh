#!/bin/bash

name="vimal"     # -n
phone=11111      # -p
age=12           # -a


# read -p "enter ur choice : " ch
#
while getopts "npa" ch
do
        case $ch in
                n)
                        echo $name;;
                p)
                        echo $phone;;
                a)
                        echo $age;;
                *)
                        echo "idl";;
        esac
done
