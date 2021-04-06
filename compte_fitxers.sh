  
#!/bin/bash
comptador()
{
	local compte
	local archivo
	
	compte=0
	for archivo in $1/* 
	do
		if [[ -s $archivo ]] &&  [[ -x $archivo ]] 
		then                                      
			(( compte++ ))			
		fi
	done
	echo "Nº de archivos: $compte"
}
clear
echo -n "Indica la ruta al directorio"
read dir
comptador $dir
exit 7
