#!/bin/bash
echo "enter the filename"
read -r file
if [[ -f "$file" ]]; then 
     echo "file exists"
     grep -c h  "$file"
else
    echo "file not exists"
fi

#abhi.txt
#hy
#hello

#2
