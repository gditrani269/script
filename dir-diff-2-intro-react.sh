#!/bin/bash

now_time2=$(diff -q /home/desa/react/2-intro-react/src/main.jsx /home/desa/react/2-intro-react/src/tmp.jsx)
echo "now_time diff SRC: " $now_time2

if [[ $now_time2 != '' ]]
then
    echo "son diferentes en SRC"
    mv /home/desa/react/2-intro-react/src/main.jsx /home/desa/react/2-intro-react/src/tmp.jsx

    cp /home/desa/react/2-intro-react/src/tmp.jsx /home/desa/react/2-intro-react/src/main.jsx

else
    echo "son iguales en SRC"
fi

