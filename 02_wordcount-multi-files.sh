#!/bin/bash
echo "enter the filename"
read -r files
echo "enter the word"
read -r word
for file in $files; do
  if [[ -f "$file" ]]; then 
      echo "file exists"
      count=$(grep -c $word  "$file")
      echo " $file contains  the wc of that word is $count"
      ((total+=count)) #total count
else
    echo "file not exists"
fi
done
echo $total

# give $(grep -c $word "$file") = which stores the result in count variable
#dont forget =done
