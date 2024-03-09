#!/bin/bash
now_time=$(ls /home/desa/react/1-intro-js/src/main.js -l | cut -d' ' -f9 )
echo "now_time: " $now_time

old_time=$(cat feature.txt)
echo "old_time: " $old_time

if [[ $now_time != $old_time ]]
then
    echo "la hora del archivo es distinta" >> /tmp/log-au.log
    echo $now_time > feature.txt
    cp /home/desa/react/1-intro-js/src/main.js /home/desa/react/1-intro-js/src/tmp.js
    cp /home/desa/react/1-intro-js/src/tmp.js /home/desa/react/1-intro-js/src/main.js
else
    echo "el archivo no cambio" >> /tmp/log-au.log
fi



 