#!/bin/bash
ps ax | grep "node /home/desa/react/1-intro-js/node_modules/.bin/vite --port 80 --host" > ps.txt


while IFS= read -r line
do
  pid=''
  pid=$(echo "$line" | grep Sl | cut -d' ' -f2)

  if [[ "$pid" > 0 ]] 
  then
    echo "matar proceso: " $pid
    kill -9 $pid
    echo "iniciar SPA"
 #   cd /home/desa/react/1-intro-js
 #   npm run dev -- --port 80 --host

 # para iniciar el proyecto react en un directorio diferente al que estoy parado
    npm run --prefix /home/desa/react/1-intro-js dev -- --port 80 --host
  fi
  
done < ps.txt




