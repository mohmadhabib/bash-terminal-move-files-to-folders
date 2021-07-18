#!/bin/bash
clear
echo
echo
echo "This Simple Bash Script to Organize your Files Into Folder"
echo "It's Only Asks you about the File Extention that your Files are"
echo "Please Add the Extention without the (.) or Dot e.x ttf or TTF or JPG"
echo "if the Files are in Deferent Extentions Run the Script and Each time with"
echo "The Needed Extention, Happy Day!"
echo "Credits MohmadHabib"
echo
echo
sleep 3
echo "Enter Your Files Extention: "  
read filesExt

for f in *.$filesExt
do
  subdir=${f%%.*}
  [ ! -d "$subdir" ] && mkdir -- "$subdir"
  mv -- "$f" "$subdir"
done

echo "The Files Now Moved to its Foldes :)"
echo "Check my GitHub for all the Useful Scripts/Tools"
echo "https://github.com/mohmadhabib/"
sleep 5
x-www-browser https://github.com/mohmadhabib/