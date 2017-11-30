#!/bin/bash
# Bash script to decrypt to encrypted file filename.anji
#
# Usage : sh unlock.sh filename.anji
#
# Output: filename
#
file=$1
#------TEXT COLORS
red=`tput setaf 1`
ylw=`tput setaf 3`
blue=`tput setaf 4`
pur=`tput setaf 5`
bold=`tput bold`
rst=`tput sgr0`
#echo " $bold $red RED $ylw YELLOW $blue BLUE $pur PURPLE $rst"
#-------------------
#read -p " Enter File to decrypt : " file
#echo $file > dummy
#file2=`cut -d'.' -f1,2 dummy`
#echo "$file2"
#rm dummy
#-------------------
file2=`echo "${file%.*}"`
#echo "$file2"
#----- Decrypting by removing .gpg extension
echo;echo "$bold $red ------------------------------------ $rst"
#echo "    $bold $red Decrypting Given File  $rst  "
#echo " ------------------------------------ "
echo;echo " $bold $ylw Given File : $red $file $rst ";echo
echo " $bold $pur Enter Password in GUI : $rst";echo
gpg -d $file > $file2 
#--------
if [ $? -ne 0 ];then
echo ;echo " $bold $red Entered Wrong Password. Bye.$rst";echo
else
echo
echo "$bold $ylw Congrats Your $red $file $rst $bold $ylw has decrypted to $blue $file2 $rst";echo
fi
#--------
echo;echo "$bold $red ------------------------------------ $rst"
echo "$bold $pur     Written By ANJI BABU KAPAKAYALA      $rst"
echo "$bold $red ------------------------------------ $rst";echo
#------------------------------------#
#   Written By AANJI BABU KAPAKAYALA #
#------------------------------------#
