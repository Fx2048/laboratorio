#!/bin/bash

# Variables
LOG_DIR="/var/log"
DEST_DIR=~/laboratorio/datos/salida
INFORME="$DEST_DIR/informe_logs.md"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Crear carpeta de salida si no existe
mkdir -p "$DEST_DIR"

# Encabezado del informe
echo "# Informe de Análisis de Logs" > "$INFORME"
echo "Fecha y hora: $DATE" >> "$INFORME"
echo "" >> "$INFORME"
echo "| Archivo | Tamaño | Ocurrencias de 'error' |" >> "$INFORME"
echo "|---------|--------|------------------------|" >> "$INFORME"

# Buscar archivos .log, ordenarlos por tamaño y tomar los 5 más grandes
mapfile -t LOG_FILES < <(find "$LOG_DIR" -type f -name "*.log" -exec du -b {} + 2>/dev/null | sort -nr | head -n 5)

MAX_ERRORS=0
FILE_MAX_ERROR=""
declare -A ERR_COUNTS

# Procesar cada archivo
for ENTRY in "${LOG_FILES[@]}"; do
  FILE_SIZE=$(echo "$ENTRY" | cut -f1)
  FILE_PATH=$(echo "$ENTRY" | cut -f2-)

  ERROR_COUNT=$(grep -i "error" "$FILE_PATH" 2>/dev/null | wc -l)
  ERR_COUNTS["$FILE_PATH"]=$ERROR_COUNT

  # Actualizar archivo con más errores
  if (( ERROR_COUNT > MAX_ERRORS )); then
    MAX_ERRORS=$ERROR_COUNT
    FILE_MAX_ERROR="$FILE_PATH"
  fi

  # Formato de tamaño legible
  SIZE_HUMAN=$(du -h "$FILE_PATH" | cut -f1)

  echo "| $(basename "$FILE_PATH") | $SIZE_HUMAN | $ERROR_COUNT |" >> "$INFORME"
done

# Agregar los últimos 3 errores del archivo con más errores
echo "" >> "$INFORME"
echo "## Últimos 3 errores en el archivo con más errores" >> "$INFORME"
echo "**Archivo**: \`$FILE_MAX_ERROR\`" >> "$INFORME"
echo "" >> "$INFORME"
echo '```' >> "$INFORME"
grep -i "error" "$FILE_MAX_ERROR" 2>/dev/null | tail -n 3 >> "$INFORME"
echo '```' >> "$INFORME"

# Mostrar resumen por pantalla
echo "✅ Análisis completado. Informe generado en: $INFORME"
echo "Archivo con más errores: $(basename "$FILE_MAX_ERROR") ($MAX_ERRORS errores)"
