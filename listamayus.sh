#!/usr/bin/bash

archivo="archivo-palabras.txt"
#Haemos un if, para que detecte si no hay argumentos, que imprima un mensaje y salga con error
if [[ $# -eq 0 ]]; then

	echo "Numero de argumentos invalidos"
	exit 1
else
	#Si no sucede la otra condicion, entonces que busque todas las palabras en mayusculas
	#Que las ordene, y luego hacer que no se repitan
	grep -o -w '[[:upper:]]\+' "$archivo" | sort | uniq
fi


