#purpose:  Delete lines containing a specific word from multiple files

echo "enter the file name"
read -r files
echo "enter the word"
read -r word

for file in $files; do
    if [ -f $file ]; then
        echo "file exists"
        sed -i "/$word/d" "$files"
        print("deleted")
    fi
    done

