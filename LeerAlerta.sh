# Leer Alerta
# El archivo de alerta se sobreescribirá cuando se cree una nueva alerta
FILE=/SO/scripts/Alerta/alertas.txt
if [ -f "$FILE" ]; then
	while IFS= read -r line
	do
		nom_User="";
		if [ "$line" != "" ]; then
			usr=$(echo "$line" | cut -c1-1)
			
			if [ "$usr" == '1' ]; then
				nom_User=$(echo "root");
			else
				if [ "$usr" == '2' ]; then
					nom_User=$(echo "d.lopez")
				else
					nom_User=$(echo "dfranco")
				fi
			fi

			echo "$nom_User -> $line"
		else
			echo "No hay más alertas"
		fi
	done < "$FILE"
else
	echo "No  existe el archivo alertas.txt"
	touch alertas.txt
	echo "Se creó el archivo alertas.txt"
fi
