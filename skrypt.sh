#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date
fi
if [[ "$1" == "--logs" ]]; then
    num=${2:-100}
    if [[ -n "$2" && "$2" =~ ^[0-9]+$ ]]; then
        num=$2
    fi
    for ((i=1; i<=num; i++)); do
        echo "Nazwa pliku: log${i}.txt" > "log${i}.txt"
        echo "Nazwa skryptu: $0" >> "log${i}.txt"
        echo "Data: $(date)" >> "log${i}.txt"
    done
fi
if [[ "$1" == "--help" ]]; then
    echo "Dostępne komendy:"
    echo "--date, -d"
    echo "--logs [liczba_logow], -l [liczba_logow]"
    echo "--help, -h"
fi