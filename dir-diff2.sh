#!/bin/bash

now_time2=$(diff -q /home/desa/react/1-intro-js/src/main.js /home/desa/react/1-intro-js/src/tmp.js)
echo "now_time diff SRC: " $now_time2

if [[ $now_time2 != '' ]]
then
    echo "son diferentes en SRC"
    mv /home/desa/react/1-intro-js/src/main.js /home/desa/react/1-intro-js/src/tmp.js

    cp /home/desa/react/1-intro-js/src/tmp.js /home/desa/react/1-intro-js/src/main.js

else
    echo "son iguales en SRC"
fi

