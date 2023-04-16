#!/bin/bash

if [[ $1 == "--date" ]]; then
    date
else
    echo "Nieznana opcja"
fi

if ["$1" == "--logs" ]; then
	if [ -z "$2" ]; then
		pliczki=100
	else
		pliczki="$2"
	fi
	for ((i=1; i<=pliczki; i++)); do
		nazwa_pliku=$(echo "log${i}.txt")
		echo "Tworzenie pliku $nazwa_pliku"
		echo "$nazwa_pliku" > "$nazwa_pliku"
		echo "Stworzone przez skrypt.sh" >> "$nazwa_pliku"
		echo "$(date)" >> "$nazwa_pliku"
	done
else
	echo "$(date)"
fi
if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
fi
if [ "$1" = "--logs"] || [ "$1" = "-l" ]; then
fi
if ["$1" = "--date" ] || ["$1" = "-d" ]; then
fi
if [ "$1" = "--interactive"] || [ "$1" = "-i"] then
fi
if [ "$1" = "--timestamp"] || [ "$1" = "-t"] then
fi
if [ "$1" = "--init"] || [ "$1" = "-t"] then
	git clone https://github.com/MattMay23/Narzedzia-w-branzy-IT-Lab-4-Podstawa-praca-z-GIT
	
	export PATH=$PATH:$(pwd)
	
	exit 0
fi