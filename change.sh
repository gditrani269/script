#bin/bash
#el primer directorio es la carpeta sobre la que trabaja el editor o visual studio.
#el segundo directorio es la carpeta sobre la que ejecuta node el proyecto.
#el proceso busca las diferencias entre las dos carpeta y subcarpetas, y nivelala segunda carpeta a la primera para que la app tome los cambios.

echo change
sRootSource="/home/desa/react/4-invoice-app/src"
sRootApp="/home/desa/apps/4-invoice-app/src"
iLenghtRootSource=${#sRootSource} 
diff -qr $sRootSource $sRootApp > resumen.txt
cat resumen.txt
echo "--------------------------------------------"

while read -r line
do
    printf "\n%s"
    echo $line
    sTipoDeDiferencia=$(echo $line | cut -d ' ' -f 1)
    if [[ $sTipoDeDiferencia == "Only" ]]
    then
        echo Procesar si solo existe en una carpeta
        sFolderSource=$(echo $line | cut -d ' ' -f 3)
        sFolderSource2=$(echo $sFolderSource | cut -d ':' -f 1)
        if [[ ${sFolderSource2:0:$iLenghtRootSource} ==  $sRootSource ]]
        then
            sFolderApp=${sFolderSource2:$iLenghtRootSource}
            sFileSource=$sRootSource$sFolderApp/$(echo $line | cut -d ' ' -f 4)
#           echo sFileSource: $sFileSource
            sFolderApp=$sRootApp$sFolderApp
#           echo sFolderApp: $sFolderApp
            cp $sFileSource $sFolderApp
        else
            echo no se hace nada ya que el cambio es de la carpeta aplicacion
        fi
    else
        echo los archivos son diferentes
        sFileSource=$(echo $line | cut -d ' ' -f 2)
        sFileApp=$(echo $line | cut -d ' ' -f 4)
#       echo source: $sFileSource 
#       echo app: $sFileApp
        cp $sFileSource $sFileApp
    fi
    echo "--------------------------------------------"
done < resumen.txt