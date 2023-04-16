#!/bin/bash

if [[ $1 == "--date" ]]; then
    date
else
    echo "Nieznana opcja"
fi
#!/bin/bash

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
if [ "$1" = "--help" ]; then
fi