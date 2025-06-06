extension="txt"   
destination="./abhi"
mkdir -p "$destination"
find . -type f -name "*.$extension" -exec mv {} "$destination" \;
echo "moved"

#tldr find
