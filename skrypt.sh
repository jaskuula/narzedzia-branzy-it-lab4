#!/bin/bash

if [[ "$1" == "--date" ]]; then
    date
if [[ "$1" == "--logs" ]]; then
    num=${2:-100}
    for ((i=1; i<=num; i++)); do
        echo "Nazwa pliku: log${i}.txt" > "log${i}.txt"
        echo "Nazwa skryptu: $0" >> "log${i}.txt"
        echo "Data: $(date)" >> "log${i}.txt"
    done
fi