#!/bin/bash

# Verificar si se proporcionó un directorio
if [ -z "$1" ]; then
  echo "Uso: $0 <directorio>"
  exit 1
fi

# Obtener nombre del directorio sin ruta y crear nombre de backup
DIR_PATH="$1"
DIR_NAME=$(basename "$DIR_PATH")
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="${DIR_NAME}_${DATE}.tar.gz"


# Crear carpeta de respaldo si no existe
DEST_DIR=~/laboratorio/respald
mkdir -p "$DEST_DIR"

# Crear el archivo comprimido
tar -czf "$DEST_DIR/$BACKUP_FILE" -C "$(dirname "$DIR_PATH")" "$DIR_NAME"

# Mostrar mensaje de éxito con el tamaño del archivo
FILE_SIZE=$(du -h "$DEST_DIR/$BACKUP_FILE" | cut -f1)
echo "✅ Respaldo creado exitosamente: $BACKUP_FILE ($FILE_SIZE)"
