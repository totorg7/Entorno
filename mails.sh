#!/bin/bash

archivo="archivo-palabras.txt"

#Usamos grep para buscar cadena de caracteres que coincidan ccon este patron
grep -o -E -w '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b' "$arcchivo"
