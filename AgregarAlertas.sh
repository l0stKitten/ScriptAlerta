# Agregar Alertas
FILE=/SO/scripts/Alerta/alertas.txt
if [ -f "$FILE" ]; then
	echo "Usuario: $1 Alerta: $2"
else
	echo "El archivo no existe :o"
fi
