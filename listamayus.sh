#!/usr/bin/bash

echo "Por favor, ingrese el nombre del archivo:"
read archivo

# Verificar si el archivo existe
if [[ ! -f "$archivo" ]]; then
    echo "El archivo $archivo no existe."
    exit 1
fi

# Buscar palabras en mayúsculas en el archivo especificado
grep -o -E -w '[[:upper:]]+' "$archivo" | sort | uniq


