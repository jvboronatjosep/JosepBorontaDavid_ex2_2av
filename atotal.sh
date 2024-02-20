#!/bin/bash
touch suma.txt
buscar_ciudad=""
suma=0
echo "Escribe una ciudad: "
read ciudad

while read -r CIUDAD MES ano CONSUMO; do
    
    buscar_ciudad=$(grep "$ciudad" | awk '{print $4}')
    suma=$((suma + buscar_ciudad))
done < consumo.txt

echo "La suma total de $ciudad es $suma"