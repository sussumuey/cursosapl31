#!/bin/bash

# Modifica o status do debug de todos os sistemas de curso deste servidor

date

for i in $( ls ); do
  if [[ $i = "sapl"* ]]; then
    echo "Atualizando " $i
    sed -i "s/DEBUG: 'True'/DEBUG: 'False'/g" $i/docker-compose.yml
  fi
done

