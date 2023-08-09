#!/bin/bash

echo "Ingrese el nombre del archivo: "
read archivo

if [[ ! -f "$archivo" ]]; then
	echo "El archivo $archivo no existe"
	exit 1
fi

#usamos un grep para poder identificar cuales cadenas son numeros, y luego las ordena y evita repeticiones
#el \b lo usamos para denotar un limite de palabra, osea donde comienza y donde termina
grep -o -E -w '\b[0-9]+\b' "$archivo" | sort -n | uniq
