#!/bin/bash
ps ax | grep "/home/desa/react/script/t.sh" > ps.txt


while IFS= read -r line
do
  pid=''
  pid=$(echo "$line" | grep D | cut -d' ' -f1)

  if [[ "$pid" > 0 ]] 
  then
    echo "matar proceso: " $pid
    kill -9 $pid
  fi
  
done < ps.txt




