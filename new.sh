# Flashable ZIP Maker by russelldias
tput setaf 4
echo "Going to remove everything in target/..."
sleep .1
tput setaf 2
echo "Removing"
sleep 3
if test -e Flashable-ZIP-Maker-SIGNED.zip
  then
   rm -rf Flashable-ZIP-Maker-SIGNED.zip
fi 
echo "Kernel Tool by russelldias"
echo "Thanks for using Kernel Tool"

