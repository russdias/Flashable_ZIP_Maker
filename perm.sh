# Flashable ZIP Maker by russelldias
echo "Setting Permissions"
echo "Setting"
if test -e zip.sh
  then
    chmod 777 zip.sh
fi
echo "Removing perm.sh"
if test -e perm.sh
  then
   rm -rf perm.sh
fi
echo "Thanks for using Flashable ZIP Maker"
