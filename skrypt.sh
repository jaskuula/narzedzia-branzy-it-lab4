#!/bin/bash

if [[ "$1" == "--date" || "$1" == "-d" ]]; then
    date
fi
if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
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
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Dostępne komendy:"
    echo "--date, -d"
    echo "--logs [liczba_logow], -l [liczba_logow]"
    echo "--help, -h"
fi

if [[ "$1" == "--init" ]]; then
    git clone "https://github.com/jaskuula/narzedzia-branzy-it-lab4"
    repo_name=$(basename "https://github.com/jaskuula/narzedzia-branzy-it-lab4" .git)
    export PATH=$PATH:$(pwd)/$repo_name
    echo "Sklonowano repozytorium i dodano do PATH"
fi