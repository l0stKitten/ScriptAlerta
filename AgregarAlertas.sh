# Agregar Alertas
FILE=/SO/scripts/Alerta/alertas.txt
if [ -f "$FILE" ]; then
	printf "$1 - $2\n" >> alertas.txt;
else
	echo "El archivo no existe :o"
fi
