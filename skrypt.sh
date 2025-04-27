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
    echo "--date, -d Wyświetla dzisiejszą datę"
    echo "--logs [liczba_logow], -l [liczba_logow] Tworzy n plików log"
    echo "--error [liczba_errorow], -e [liczba_errorow] Tworzy n plików error"
    echo "--init Klonuje repo i ustawia PATH"
    echo "--help, -h Wyświetla dostępne opcje"
fi