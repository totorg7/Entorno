#!/bin/bash


archivo="archivo-palabras.txt"
#Definimos una funcion para que tome un argumento(la palabra a verificar) y compruebe si tiene todas las vocales
function vocales() {
	#Luego las transforma las mayusculas en minusculas, para que no haya problemas
	palabra=$(echo "$1" | tr '[:upper:]' '[:lower:]')
	#Usamos el for para ver si cada vocal esta presente
	for vocal in a e i o u; do
		if [[ ${palabra} != *${vocal}* ]]; then
		#Si esto no se cumple, retorna un exit con error
			exit 1
		#Caso contrario, retrna una salida con exito
		fi
	done
	exit 0
}


#Aqui se declara un array (diccionario) vacio
palabrasvocal=()
#Usamos el while para que lea el archivo archivo_palabras.txt
while read -r palabra; do
	#para cada palabra, el while usa la funcion vocales para ver si tiene todas
	if vocales "$palabra"; then
		#si tiene todas las vocales, se agrega al array vacio
		palabrasvocal+=("$palabra")
	fi
done < "$archivo"

#Por ultimo, se imprime cada palabra que este en el array
for palabra in "${palabrasvocal[@]}"; do
	echo "$palabra"
#Finalmente, las ordena y hace un reuento de cada palabra unica
#Utilice el coando awk para formatear la salida de manera que el recuento de apariciones este entre parentesis despues de cada palabra.Investigue un poco y crei que era la manera mas eficiente
done | sort | uniq -c | awk '{print $2"("$1")"}'
