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

![imagen](https://github.com/user-attachments/assets/3c44aedf-e3d9-43ab-9290-4f1c816f7a3f)

## Ejercicio 2 para desarrollar:
1. Crea un archivo "registro.log" en el directorio "datos" con al menos 20 líneas de
texto (puedes usar un bucle)
2. Visualiza las primeras 5 líneas de "registro.log"
3. Visualiza las últimas 3 líneas de "registro.log"
4. Abre el archivo con nano (o vim) y agrega una línea al inicio que diga "#
ARCHIVO DE REGISTRO"
5. Visualiza el archivo completo para verificar tus cambios

[LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/registro.log)

![imagen](https://github.com/user-attachments/assets/81665057-6e9d-4795-b887-11e928a3a31f)

## Parte II: Comandos de nivel intermedio
## Ejercicio 3 para desarrollar:
1. Busca todos los archivos con extensión ".txt" en tu directorio de laboratorio y
subdirectorios

![imagen](https://github.com/user-attachments/assets/7d2178fa-f792-4fa4-ab8b-c18b3fd42d4c)


3. Crea un archivo "numeros.txt" con números del 1 al 100 (uno por línea) [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/numeros.txt)
4. Encuentra todos los números pares en el archivo
5. Encuentra todos los números divisibles por 3
``awk '{for(i=1;i<=NF;i++) if ($i % 3 == 0) print $i}' laboratorio/datos/entrada/numeros.txt``

![imagen](https://github.com/user-attachments/assets/3d00d367-3d06-4a75-b445-27cd759a7546)

![imagen](https://github.com/user-attachments/assets/c1463707-861f-4351-a9a2-9eafb50ecdc9)


7. Cuenta cuántos números son divisibles por 5 ```awk '{for(i=1;i<=NF;i++) if ($i % 5 == 0) print $i}' laboratorio/datos/entrada/numeros.txt``

 
 ![imagen](https://github.com/user-attachments/assets/38d04b97-ffe9-47cb-aedb-4f0e1cab6bd9)

9. Ordena el archivo de mayor a menor y guarda el resultado en
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
```find laboratorio -type f | wc -l``
11


## Ejercicio 2.3: Permisos y Usuarios (10 minutos)
## Ejercicio 5 para desarrollar:
1. Crea un directorio "privado" en tu directorio de laboratorio [LINK](https://github.com/Fx2048/laboratorio/tree/main/privado)
   
2. Crea un archivo "confidencial.txt" dentro de este directorio [link](https://github.com/Fx2048/laboratorio/blob/main/privado/confidencial.txt)
3. Configura los permisos para que:
Solo tú puedas leer y escribir el archivo (no ejecutar)
Nadie más pueda hacer nada con él
5. Crea un directorio "compartido" que cualquiera pueda leer, pero sólo tú
modificar (FOTO)  [LINK](https://github.com/Fx2048/laboratorio/tree/main/compartido)
6. Verifica los permisos utilizando ls -la


![imagen](https://github.com/user-attachments/assets/e77d57e7-c114-4d45-b2f5-4fd9968ae9a1)



## Parte III: Comandos de nivel avanzado
## Ejercicio 3.1: Procesos y Monitoreo (15 minutos)
## Ejercicio 6 para desarrollar:
1. Ejecuta un comando ping a google.com en segundo plano, redirigiendo su
salida a "ping_log.txt" [LINK](https://github.com/Fx2048/laboratorio/blob/main/ping_log.txt)


3. Ejecuta el comando top y aprende a:
Ordenar procesos por uso de CPU
Ordenar procesos por uso de memoria
Filtrar para ver solo tus procesos (FOTO)

![imagen](https://github.com/user-attachments/assets/ff2ddf8c-6868-4d9d-a19b-a9dd665a6614)

5. Identifica el PID del proceso ping que iniciaste y termínalo correctamente
6. Verifica que el archivo de log contiene información

![imagen](https://github.com/user-attachments/assets/672c5a92-64e3-4a9f-8eeb-82fea9690db4)

![imagen](https://github.com/user-attachments/assets/2376e668-6f2a-481c-80eb-6ae03d9ae314)

![imagen](https://github.com/user-attachments/assets/2e30a12f-cb7f-455f-9656-be675e01f7bc)


## Ejercicio 3.2: Scripts Básicos y Automatización (15 minutos)
## Ejercicio 7 para desarrollar:
1. Crea un script llamado "backup.sh" que: [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/backup.sh)
Reciba como parámetro un directorio
Cree un archivo tar.gz con el contenido de ese directorio [LINK](https://github.com/Fx2048/laboratorio/tree/main/respald)
Coloque el archivo comprimido en ~/laboratorio/respald/ [LINK](https://github.com/Fx2048/laboratorio/blob/main/respald/Documentos.tar.gz)
Muestre un mensaje de éxito con el tamaño del archivo creado
2. Prueba el script con diferentes directorios
3. Modifica el script para añadir la fecha actual al nombre del archivo de respaldo[LINK](https://github.com/Fx2048/laboratorio/blob/main/respald/Imagenes_20250507_200511.tar.gz)

![imagen](https://github.com/user-attachments/assets/c1489d36-45c0-4ffa-9601-b9cc4c4a8a3d)



## Ejercicio 3.3: Reto Final Integrador (15 minutos)
Desafío: Análisis de Logs del Sistema
A. Crea un script llamado "analisis_logs.sh" que: [LINK](https://github.com/Fx2048/laboratorio/blob/main/datos/entrada/analisis_logs.sh)
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


![imagen](https://github.com/user-attachments/assets/71b4964d-ede1-439f-96b7-b19c923fd33e)

