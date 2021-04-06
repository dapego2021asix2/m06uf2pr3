#!/bin/bash
clear
echo -n ""
echo -n "Donam la ruta bro :"
read ruta
echo -n ""
echo -n "dame el arxivo loco:"
read archivo 
echo -n ""


echo "$ruta/$archivo"

if [[ -e /home/FitxConfBackup ]]
then
	
	echo -n ""
	echo -n  "El directorio /home/FitxConfBackup ja existeix"
	echo -n ""
else
	mkdir /home/FitxConfBackup
fi

echo -n ""

if [[ -e /home/FitxConfBackup/$archivo ]]
then
	
	echo -n ""
	rm /home/FitxConfBackup/$archivo
	touch /home/FitxConfBackup/$archivo
	echo -n ""
	echo -n  "S'ha sobreescrit $archivo"
	echo -n ""
else
	echo -n ""
	touch /home/FitxConfBackup/$archivo
	echo -n  "S'ha creat $archivo"
	echo -n  ""

fi
