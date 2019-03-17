#!/bin/bash

list_files () {
  echo "\nDirectorio actual:"
  pwd
  echo "Listado de ficheros/directorios:"
  ls -la
}

copy_files () {
  echo -n "Nombre del fichero a copiar: "
  read file1
  if test -f $file1
  then
    echo -n "Especifique el nombre del fichero nuevo: "
    read file2
    cp $file1 $file2
  else
    echo "El fichero $file1 no existe."
  fi
}

print_file () {
  echo -n "Nombre del fichero a imprimir: "
  read file1
  if test -f $file1
  then
    cat $file1
  else
    echo "El fichero $file1 no existe."
  fi
}

edit_files () {
  echo -n "Nombre del fichero a editar: "
  read file
  if test -f $file
  then
    vi $file
  else
    echo "El fichero $file no existe."
  fi
}

response=0
until [ $response = "5" ]
do
  clear
  echo "Ver directorio actual ............ [1]"
  echo "Copiar archivos .................. [2]"
  echo "Editar archivos .................. [3]"
  echo "Imprimir archivo ................. [4]"
  echo "Salir ............................ [5]"
  echo -n "Seleccionar una de las opciones anteriores: "
  read response

  case $response in
    1) list_files
    ;;
    2) copy_files
    ;;
    3) edit_files
    ;;
    4) print_file
    ;;
    5) echo "Saliendo del programa..."
    ;;
    *) echo "Opción no válida."
  esac
done

exit
