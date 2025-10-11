read -p "enter your filename: " myfile
[ -e $myfile ] && echo "$myfile file already exists" || touch $myfile
