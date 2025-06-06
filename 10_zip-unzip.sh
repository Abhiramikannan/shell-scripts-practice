#!/bin/bash
echo "enter the file name to zip"
read -r  dir
 if [ -d $dir ]; then
    zip -r "$dir.zip" $dir
    echo "zipped to $dir.zip"
else
    echo "not a directory"
fi


#apt install zip
#unzip -l abhi.zip =see the files

echo "enter the file to unzip"
read -r dir
if [ -f $dir ]; then # file
    unzip "$dir"
    echo "unzipped $dir"
else
    echo "not an directory"
fi
