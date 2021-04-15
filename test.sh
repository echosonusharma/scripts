#! /bin/bash

echo "this script is not to be executed !"

exit 1

# read with stdin
# pass a file location and it will read it for you
while read line
do
    echo "$line"
done < "${1:- /dev/stdin}"

# stdout
# passing results to a file
# only works if the theres no err 
ls -al > ls.txt

# if runs pass it into ls.txt
# if error passes into err.txt 
ls -al 1>ls.txt 2>err.txt
#
ls -al >& ls.txt

# same file will contain both err and output
ls -al 1>out.txt 2>&1
