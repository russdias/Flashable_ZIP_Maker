#! /bin/bash

# Flashable ZIP Maker	
# Author: Russell Dias
# Version: 1.0.1
# Date: May 24, 2013
# Contact: russell.dias98@gmail.com
# Flashable ZIP Maker by russelldias

echo "Making a Flashable zip"
cd target
sleep .2
# Making zip 
cp -r ../tools/META-INF META-INF
cp -r ../tools/system system
cp ../tools/signapk.jar signapk.jar 
cp ../tools/testkey.x509.pem testkey.x509.pem
cp ../tools/testkey.pk8 testkey.pk8
# zipping
zip -r Flashable-ZIP-Maker.zip META-INF system  
echo "ZIP is Ready"
echo "Signing ZIP"
java -jar signapk.jar testkey.x509.pem testkey.pk8 Flashable-ZIP-Maker.zip Flashable-ZIP-Maker-SIGNED.zip
# Cleanup
echo "Cleaning up"
rm Flashable-ZIP-Maker.zip
rm *.jar
rm *.pk8
rm *.pem
rm -r META-INF 
rm -r system
cd ..
echo "Flashable zip is in target/Flashable-ZIP-Maker-SIGNED.zip"
tput sgr0
setterm -bold
echo "Flashable ZIP Maker by russelldias"
sleep .1
echo "Thanks for using Flashable ZIP Maker"
sleep .1
echo "Please press [Enter] to exit."
tput sgr0
read ANS
