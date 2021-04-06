#!/bin/bash

echo "descarrega del fitxer error.log"

wget https://www.collados.org/asix2/m06/uf2/error.logs > /dev/null 2>&1

if [[ -e error.logs ]]


then
	echo "Se ha descarregat el fitxer"
else 
	echo "no funciona, no se descargo"
	exit 20
fi

echo -n "Busqueda avançada de error.logs : "
echo -n "dia:"
read dia
echo -n "mes:"
read mes
nmes=$mes
echo -n "any:" 
read any


  case $mes in
     01)
        mes="Gem"
     ;;
     02)
        mes="Feb"
     ;;
     03)
        mes="Mar"
     ;;
     04)
        mes="Apr"
     ;;
     05)
        mes="May"
     ;;
     06)
        mes="Jun"
     ;;
     07)
        mes="Jul"
     ;;
     08)
        mes="Aug"
     ;;
     09)
        mes="Sep"
     ;;
     10)
        mes="Oct"
     ;;
     11)
        mes="Nov"
     ;;
     12)
        mes="Dec"
     ;;
     *)
		echo "Incorrecte, torna a probar"
		exit 10
	;;
  esac
  
  
if [[ -e /home/FitxConfBackup ]]
then
	rm /home/FitxConfBackup/err*
	echo -n ""
	touch /home/FitxConfBackup/err$any$nmes$dia.log
	echo -n  "S'ha netejat el fitxer"
	echo -n ""
else
	mkdir /home/FitxConfBackup
	echo -n ""
	touch /home/FitxConfBackup/err$any$nmes$dia.log
	echo -n  "S'ha creat el fitxer"
fi


echo -n ""
grep -E "($mes $dia.*$any.*error)" error.logs >> /home/FitxConfBackup/err$any$nmes$dia.log
echo -n ""

exit 0
