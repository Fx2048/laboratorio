# Laboratorio 6:
## Parte I: Comandos de nivel básico
## Ejercicio 1 para desarrollar:
1. Navega entre los diferentes directorios usando cd
2. Crea tres archivos de texto vacíos en el directorio "entrada" llamados
"datos1.txt", "datos2.txt" y "config.cfg"
3. Copia "datos1.txt" al directorio "respaldo"
4. Mueve "config.cfg" al directorio raíz del laboratorio
5. Elimina "datos2.txt"

[LINK](https://github.com/Fx2048/laboratorio/tree/main/datos/entrada)

## Ejercicio 2 para desarrollar:
1. Crea un archivo "registro.log" en el directorio "datos" con al menos 20 líneas de
texto (puedes usar un bucle)
2. Visualiza las primeras 5 líneas de "registro.log"
3. Visualiza las últimas 3 líneas de "registro.log"
4. Abre el archivo con nano (o vim) y agrega una línea al inicio que diga "#
ARCHIVO DE REGISTRO"
5. Visualiza el archivo completo para verificar tus cambios

[LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/registro.log)

## Parte II: Comandos de nivel intermedio
## Ejercicio 3 para desarrollar:
1. Busca todos los archivos con extensión ".txt" en tu directorio de laboratorio y
subdirectorios
2. Crea un archivo "numeros.txt" con números del 1 al 100 (uno por línea) [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/numeros.txt)
3. Encuentra todos los números pares en el archivo
4. Encuentra todos los números divisibles por 3
5. Cuenta cuántos números son divisibles por 5
6. Ordena el archivo de mayor a menor y guarda el resultado en
"numeros_ordenados.txt" [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/numeros_ordenados.txt)

## Ejercicio 2.2: Redirección y Tuberías (15 minutos)
## Ejercicio 4 para desarrollar:
1. Crea un archivo que contenga la lista de todos los procesos en ejecución [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/todos_los_procesos.txt)
   
2. Filtra los procesos que pertenecen a tu usuario y guárdalos en un archivo
separado  [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/procesos_mi_usuario.txt)
3. Encuentra los 5 procesos que más memoria consumen y guárdalos en
"top_procesos.txt"
 [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/top_procesos.txt)
4. Crea un único comando que cuente cuántos archivos hay en el directorio /etc(en este caso opté por /laboratorio)


## Ejercicio 2.3: Permisos y Usuarios (10 minutos)
## Ejercicio 5 para desarrollar:
1. Crea un directorio "privado" en tu directorio de laboratorio [LINK](https://github.com/Fx2048/laboratorio/tree/main/privado)
   
2. Crea un archivo "confidencial.txt" dentro de este directorio [link](https://github.com/Fx2048/laboratorio/blob/main/privado/confidencial.txt)
3. Configura los permisos para que:
Solo tú puedas leer y escribir el archivo (no ejecutar)
Nadie más pueda hacer nada con él
5. Crea un directorio "compartido" que cualquiera pueda leer, pero sólo tú
modificar
6. Verifica los permisos utilizando ls -la





## Parte III: Comandos de nivel avanzado
## Ejercicio 3.1: Procesos y Monitoreo (15 minutos)
## Ejercicio 6 para desarrollar:
1. Ejecuta un comando ping a google.com en segundo plano, redirigiendo su
salida a "ping_log.txt"
2. Ejecuta el comando top y aprende a:
Ordenar procesos por uso de CPU
Ordenar procesos por uso de memoria
Filtrar para ver solo tus procesos
3. Identifica el PID del proceso ping que iniciaste y termínalo correctamente
4. Verifica que el archivo de log contiene información




## Ejercicio 3.2: Scripts Básicos y Automatización (15 minutos)
## Ejercicio 7 para desarrollar:
1. Crea un script llamado "backup.sh" que:
Reciba como parámetro un directorio
Cree un archivo tar.gz con el contenido de ese directorio
Coloque el archivo comprimido en ~/laboratorio/respaldo/
Muestre un mensaje de éxito con el tamaño del archivo creado
2. Prueba el script con diferentes directorios
3. Modifica el script para añadir la fecha actual al nombre del archivo de respaldo




## Ejercicio 3.3: Reto Final Integrador (15 minutos)
Desafío: Análisis de Logs del Sistema
A. Crea un script llamado "analisis_logs.sh" que:
• Busque en el directorio /var/log/ todos los archivos de log (terminados en .log)
• Identifique los 5 archivos de log más grandes
• Cuente las ocurrencias de la palabra "error" (ignorando
mayúsculas/minúsculas) en cada uno
• Genere un informe en formato markdown en
~/laboratorio/datos/salida/informe_logs.md con:
▪ Fecha y hora del análisis
▪ Tabla de archivos con: nombre, tamaño y número de errores
▪ Los 3 últimos errores encontrados en el archivo con más errores
• Muestre un resumen por pantalla
