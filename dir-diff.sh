#!/bin/bash
now_time=$(ls /home/desa/react/prueba/test.txt -l | cut -d' ' -f9 )
echo "now_time: " $now_time

old_time=$(cat feature.txt)
echo "old_time: " $old_time

if [[ $now_time != $old_time ]]
then
    echo "la hora del archivo es distinta" >> /tmp/log-au.log
    echo $now_time > feature.txt
else
    echo "el archivo no cambio" >> /tmp/log-au.log
fi



