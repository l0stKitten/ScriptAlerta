# Leer Alerta
# El archivo de alerta se sobreescribirá cuando se cree una nueva alerta
FILE=/SO/scripts/Alerta/alertas.txt
if [ -f "$FILE" ]; then
	echo "El archivo existe"
else
	echo "No  existe el archivo alertas.txt"
	touch alertas.txt
	echo "Se creó el archivo alertas.txt"
fi
