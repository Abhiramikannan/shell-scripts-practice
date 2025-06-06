#Qn. Write a Shell script that checks if a given file is a symbolic link and displays the target of the link

#symbolic file: path to another file
#You can create a symbolic link named doc_link.txt that points to document.txt like this:
# -L : True if file exists and is a symbolic link
#soft -file delete -path wont delte
#hard -file delete -path delete

#ln -s abhi.txt link
#readlink is a command that prints the target of a symbolic link.

#!/bin/bash
echo "enter the file"
read -r file
if [ -L $file ]; then
        echo "$file is symbolic link"
        target=$(readlink "$file")
        echo "points to $target"
else
        echo "$file not exists"
fi



#ln -s abhi.txt link
# enter the file
# link
# link is symbolic link
# points to abhi.txt
