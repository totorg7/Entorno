#!/bin/bash

echo "Ingrese el nombre del archivo"
read archivo

if [[ ! -f "$archivo" ]]; then
	echo "El archivo $archivo no existe"
	exit 1
fi


#Definimos una funcion que sirve para ver si tiene todas las vocales
function vocales() {
	#Luego las transforma las mayusculas en minusculas, para que no haya problemas
	palabra=$(echo "$1" | tr '[:upper:]' '[:lower:]')
	#Usamos el for para ver si cada vocal esta presente
	for vocal in a e i o u; do
		if [[ ! ${palabra} =~ ${vocal} ]]; then
		#Si esto no se cumple, retorna un exit con error
			return 1
		#Caso contrario, retrna una salida con exito
		fi
	done
	return 0
}


grep -o -E '\w+' "$archivo" | while read -r palabra; do

	if vocales "$palabra"; then
		echo "$palabra"
	fi
#Finalmente, las ordena y hace un reuento de cada palabra unica
#Utilice el coando awk para formatear la salida de manera que el recuento de apariciones este entre parentesis despues de cada palabra.Investigue un poco y crei que era la manera mas eficiente
done | sort | uniq -c | awk '{if ($1 == 1) print $2; else print $2"("$1")";}'
