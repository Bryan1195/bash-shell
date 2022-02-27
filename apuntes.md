<div align="center">
    <h1>Curso de Programación en Bash Shell</h1>
    <img src="https://imgur.com/x9fAMAs.png" width="">
</div>

## Tabla de contenidos

- [Introducción](#introducción)
  - [Componentes de Linux, Tipos de Shell y Comandos de información](#componentes-de-linux-tipos-de-shell-y-comandos-de-información)
  - [Bash scripting](#bash-scripting)
  - [Uso básico de VIM](#uso-básico-de-vim)
  - [Crear nuestro primer Script](#crear-nuestro-primer-script)
  - [Ejecutar nuestro script con un nombre único](#ejecutar-nuestro-script-con-un-nombre-único)
- [Programación Shell Básica](#programación-shell-básica)
  - [Declaración de Variables y Alcance en Bash Shell](#declaración-de-variables-y-alcance-en-bash-shell)
    - [Variables de entorno](#variables-de-entorno)
    - [Variables de usuario](#variables-de-usuario)
  - [Tipos de Operadores](#tipos-de-operadores)
  - [Script con Argumentos](#script-con-argumentos)
  - [Sustitución de Comandos en variables](#sustitución-de-comandos-en-variables)
  - [Debug en Script](#debug-en-script)
  - [Reto 1](#reto-1)
- [Script Interactivos](#script-interactivos)
  - [Capturar información usuario](#capturar-información-usuario)
  - [Expresiones Regulares](#expresiones-regulares)
  - [Validar información](#validar-información)
  - [Paso de parámetros y opciones](#paso-de-parámetros-y-opciones)
  - [Descargar información de Internet](#descargar-información-de-internet)
  - [Reto 2](#reto-2)
- [Condicionales](#condicionales)
  - [Sentencias If/Else](#sentencias-ifelse)
  - [Reto 3](#reto-3)
  - [If Anidados](#if-anidados)
  - [Expresiones Condicionales](#expresiones-condicionales)
  - [Sentencias Case](#sentencias-case)
- [Iteración](#iteración)
  - [Arreglos](#arreglos)
  - [Sentencia for loop](#sentencia-for-loop)
  - [Sentencia while loop](#sentencia-while-loop)
  - [Loop Anidados](#loop-anidados)
  - [Break y continue](#break-y-continue)
  - [Menú de Opciones](#menú-de-opciones)
  - [Reto 4](#reto-4)
- [Archivos](#archivos)
  - [Archivos y Directorios](#archivos-y-directorios)
  - [Escribir dentro de archivos](#escribir-dentro-de-archivos)
  - [Leer Archivos](#leer-archivos)
  - [Operaciones Archivos](#operaciones-archivos)
  - [Reto 5](#reto-5)
- [Empaquetamiento](#empaquetamiento)
  - [Empaquetamiento TAR, GZIP y PBZIP 2](#empaquetamiento-tar-gzip-y-pbzip-2)
  - [Respaldo Empaquetado con clave](#respaldo-empaquetado-con-clave)
  - [Transferir información red](#transferir-información-red)
  - [Reto 6](#reto-6)
- [Funciones](#funciones)
  - [Crear funciones y Paso de Argumentos](#crear-funciones-y-paso-de-argumentos)
  - [Funciones de instalar  y desinstalar postgres](#funciones-de-instalar--y-desinstalar-postgres)
  - [Funciones sacar y restaurar respaldos en postgres](#funciones-sacar-y-restaurar-respaldos-en-postgres)
  - [Reto 7](#reto-7)
- [Cierre del curso](#cierre-del-curso)
  - [Cierre](#cierre)


# Introducción

## Componentes de Linux, Tipos de Shell y Comandos de información

![linux-main-components](https://i.imgur.com/xVHJGha.png?1)

- **Kernel**: es el núcleo del sistema operativo, en el cual se gestionan todos los recursos de hardware (RAM, procesamiento, periféricos, etc.); aquí será donde se ejecuten las aplicaciones.
- **Shell**: es el intérprete, un programa que tiene una interfaz de usuario que permite ejecutar las aplicaciones de un lenguaje de alto nivel y procesarlas en uno de bajo nivel para manipular y controlar aplicaciones y programas como nuestro proyecto.
- **Aplicaciones**: son las aplicaciones con las que interactuamos día a día e internamente, cada aplicación ejecuta comandos para su funcionamiento, toman control de los periféricos en algunas ocasiones o ejecutan algunas acciones directamente en el núcleo kernel.

Tipos de Shells:

- **SH**
- **KSH**
- **CSH**
- **BASH** <-- La que utilizaremos

Algunos comandos para conocer información sobre el resto de comandos:

- `man [comando]`
- `info [comando]`

## Bash scripting

La idea básica de generar programas en bash es poder ejecutar múltiples comandos de forma secuencial en muchas ocasiones para automatizar una tarea en especifico. Estos comandos son colocados en un archivo de textos de manera secuencial para poder ejecutarlos a posterioridad.

1. Para configurar el editor vim debemos estar en `$home`
2. Creamos el archivo llamado `.vimrc` con el comando: `vim .vimrc`
3. Presionamos la tecla i para editar, ponemos:

```shell
set showmode  # mostrar operaciones
set autoindent  # indentacion automatica
set tabstop=4   # cantidad de espacios
set expandtab  # salto de linea, se indenta segun jerarquia.
set nu  # ver numero de lineas
syntax on  # colores en el script
```
4. Presionamos `:wq` para salir y guardar

## Uso básico de VIM

Presionando antes la tecla `Esc`:

- `i` = insertar texto
- `:q` = salir sin guardar
- `:q!` = forzar salida
- `:w` = guardar
- `:wq` = guardar y salir
- `u` = Ctrl + z
- `yy` = copiar una sola linea
- `p` = pegar
- `dd` = eliminar una linea
- `(numero) + dd` = borrar el numero de lineas escrito
- `(numero) + yy` = copiar el numero de lineas escrito
- `Ctrl + v` = seleccionar texto

> [Vim cheatsheet](https://devhints.io/vim)

## Crear nuestro primer Script

Creamos el primer script en Bash Shell básico llamado [1_utilityPostgres.sh](scripts/1_utilityPostgres.sh).

Como conceptos básicos en programación Bash Shell vimos:

- comentarios con `#`
- una linea de código llamada [shebang](https://en.wikipedia.org/wiki/Shebang_(Unix)), la que identifica a un archivo como script ´#!/bin/bash´
- `echo`: Los argumentos que se pasan a `echo` se imprimen en la salida estándar. `echo` se usa comúnmente en scripts de shell para mostrar un mensaje o generar los resultados de otros comandos.

## Ejecutar nuestro script con un nombre único

- `chmod`: El siguiente comando lo utilizamos para asignar permisos a un archivo, ejemplo: `chmod NNN <nombre_archivo.sh>` donde `NNN` son los permisos. Mas detalles en: [Modificando permisos en terminal](https://github.com/francomanca93/terminal-y-linea-de-comandos/blob/master/apuntes.md#modificando-permisos-en-la-terminal)
- Ejecutar un script, hay dos formas estando en la terminal:
  - `bash nombre_script.sh`
  - `./ nombre_script.sh`
  - `sh nombre_script.sh`
- Cuando creamos un script en shell debemos validar que el mismo no exista o se encuentre reservado su nombre, para comprobar esto lo hacemos con los comandos:
  - `type nombre_script.sh`: nos indica tipo de archivo y ubicación. Si no aparece nada es porque no esta registrado.
  - `type -a nombre_script.sh`: todos los archivos encontrados.
  - `type -t nombre_script.sh`: tipo de archivo.

# Programación Shell Básica

## Declaración de Variables y Alcance en Bash Shell

Las variables deben ser declaradas en **mayúsculas** (estandar, tambien pueden ser declaradas en minusculas, pero no es recomendable) y son llamadas en la linea de comando (variable de entorno o del S.O.) o dentro de un archivo (variable de usuario o del script) como `$VARIABLE`. Para que se puedan utilizar en el sistema o en algún otro archivo deberemos utilizar la palabra reservada `export`, ejemplo: `export VARIABLE`

### Variables de entorno

Estas variables ayudan a obtener infromacion del sistema, almacenar informacion temporal y modificar su informacion. Existen 2 tipos:

- **Variables Globales**: Son visibles desde el shell que lo creo o desde cuaquier hijo de esa shell.
- **Variables Locales**: Son visibles solo desde el shell que la creo.

**Variable Persistente**: Para crear una de estas es necesario introducirla en el archivo `/etc/profile` y luego reiniciar el sistema para que sen válidas pero en el caso de los derivados debian si revisamos un poco el script nos damos cuenta que llama a otro archivo llamado `/etc/bash.bashrc` en el cual podemos crear las variables de entorno persistentes.

Por eso no funciona llamar la variable declarada en `/etc/profile` desde un shell

> [Manejo de variables de entorno en Linux](https://www.youtube.com/watch?v=ZX58AHhXpyA): Podemos ver con mas detalles el manejo de variables de entorno en Linux.

### Variables de usuario

Son las variables que se corren dentro de un script como en cualquier programa de computadora C, C++ o Java

- **Variable global**: Se puede usar desde otro script siempre y cuando sea llamado desde el script que contiene la variable.
- **Variable local**: Solo tiene alcance en el script que la creo.

Ejemplos utilizando [scripts/2_variables.sh](scripts/2_variables.sh) y [scripts/2_variables_2.sh](scripts/2_variables_2.sh)

## Tipos de Operadores

Lo operadores son iguales que en todos los lenguajes de programación:

- Operadores ariméticos: `+ - * / %`
- Operadores relacionales: `> < >= <= == !=`
- Operadores de asignación: `+= -= *= /= %=`

Cada uno de los operadores los usamos en el script [scripts/3_tiposOperadores.sh](scripts/3_tiposOperadores.sh)

## Script con Argumentos

Los argumentos en un script son los valores que le pasamos para que este los interprete y trabaje con él.

Dentro del script usamos:

- `$`: para asignar un parametro
- `$0`: Se refiere al nombre del Script
- `$1`: al ${10}: Se refiere al número de argumento. Si es más de uno lo colocamos dentro de llaves.
- `$#`: Es útil para conocer el número de argumentos enviados.
- `$*`: Con este podemos conocer todos los argumentos enviados.

Al ejecutar al script le pasamos los argumentos, ejemplos:

- `./nombre_script.sh argumento1 argumento2`: una forma de ejecutarlo pasando como argumentos valores.
- `bash nombre_script.sh "argumento1" "argumento2"`: otra forma de ejecutarlo, ahora si le pasamos como argumentos cadena de caractéres.

El concepto de argumentos lo aplicamos en el script [scripts/4_argumentos.sh](scripts/4_argumentos.sh)

## Sustitución de Comandos en variables

Para la sustitución de comandos es importante tener en cuenta que el resultado servirá para realizar otras tareas de otras sentencias de nuestro programa.

Las dos maneras de hacerlo:

- Usando el backtick caracter.  `(``)`
- Usando el signo de dólar con el formato `$(comando)`

> La sintaxis `$()` es el estándar POSIX, y soportado por BASH, Korn Shell, ash, Dash, Zsh, Busybox, etc.
El uso de backticks es legado y no debería ser utilizado, sigue ahí solo para compatibilidad con versiones muy viejas de Sh.

Los conceptos de sustitución de comandos en variables lo aplicamos en el script [scripts/5_subtitucionComand.sh](scripts/5_subtitucionComand.sh)

## Debug en Script

Para realizar debugging en un script tenemos dos opciones en el comando de `bash`:

- `-v`: Utilizado para ver el resultado detallado de nuestro script, evaluado línea por línea, o sea, te muestra el script y sus valores evaluados. Ejemplo: `bash -v nombre_script.sh`
- `-x`: Utilizado para desplegar la información de los comandos que son usados, capturando el comando y su salida, o sea, te muestra el script. valores evaluados y especifica cuales son entradas y salidas. Ejemplo: `bash -x nombre_script.sh`

## Reto 1

# Script Interactivos

## Capturar información usuario

## Expresiones Regulares

## Validar información

## Paso de parámetros y opciones

## Descargar información de Internet

## Reto 2

# Condicionales

## Sentencias If/Else

## Reto 3

## If Anidados

## Expresiones Condicionales

## Sentencias Case

# Iteración

## Arreglos

## Sentencia for loop

## Sentencia while loop

## Loop Anidados

## Break y continue

## Menú de Opciones

## Reto 4

# Archivos

## Archivos y Directorios

## Escribir dentro de archivos

## Leer Archivos

## Operaciones Archivos

## Reto 5

# Empaquetamiento

## Empaquetamiento TAR, GZIP y PBZIP 2

## Respaldo Empaquetado con clave

## Transferir información red

## Reto 6

# Funciones

## Crear funciones y Paso de Argumentos

## Funciones de instalar  y desinstalar postgres

## Funciones sacar y restaurar respaldos en postgres

## Reto 7

# Cierre del curso

## Cierre
