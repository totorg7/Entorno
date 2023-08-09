#!/bin/bash

echo "Por favor, ingrese el nombre del archivo: "
read archivo

if [[ ! -f "$archivo" ]]; then
	echo "El archivo $archivo no existe"
	exit 1
fi

#Usamos grep para buscar cadena de caracteres que coincidan ccon este patron
grep -o -E -w '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b' "$archivo"
