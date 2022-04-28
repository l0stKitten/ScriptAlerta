# Leer Alerta
# El archivo de alerta se sobreescribirá cuando se cree una nueva alerta
FILE=/SO/scripts/Alerta/alertas.txt
if [ -f "$FILE" ]; then
	while IFS= read -r line
	do
		if [ "$line" != "" ]; then
			user=$(echo "$line" | cut -c1-1)
			if [ "$user" == '1' ]; then
				echo "Es root"
			else
				echo "No es root"
			fi
		else
			echo "No hay más alertas"
		fi
	done < "$FILE"
else
	echo "No  existe el archivo alertas.txt"
	touch alertas.txt
	echo "Se creó el archivo alertas.txt"
fi
