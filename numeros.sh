#!/bin/bash

archivo="archivo-palabras.txt"


grep -o -E -w '\b[0-9]+\b' "$archivo" | sort-n | uniq
 
