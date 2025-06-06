#!/bin/bash
#author: Abhirami Kannan
#purpose:write  a shellscript that displays all the files in the current directory to which the user has read, write and execute permissions.
#usage: ./q2_abhirami_290399.sh

# find . -maxdepth 1 -type f -perm /u=rwx -print
echo "Files with rwx permissions for user:"
echo "-----------------------------------------"
ls -ltr | grep -i '^-rwx'
