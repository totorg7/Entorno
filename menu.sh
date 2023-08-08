#!/usr/bin/bash

opcion=0

untiL [[ $opcion =~ [1-4] ]]; do
	echo "1)Lista Mayusculas. 2)Palabras con vocales. 3)Mostrar mails. 4)Mostrar numeros. 5)Salir."

	read -p "Ingrese su opcion: " opcion

	case $opcion in
		1)
			bash listamayus.sh
			;;
		2)
			bash palabrasvocal.sh
			;;
		3)
			bash mails.sh
			;;
		4)
			bash numeros.sh
			;;
		5)
			exit
			;;
		*)
			echo "Numero incorrecto"
			;;
	esac
done
exit 0
