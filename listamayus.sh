#!/usr/bin/bash

archivo="archivo-palabras.txt"

if [[ $# -eq 0 ]]; then

	echo "Numero de argumentos invalidos"
	exit 1
else
	grep -o -w '[[:upper:]]\+' "$archivo" | sort | uniq


