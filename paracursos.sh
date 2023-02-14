#!/bin/bash

# Para todos os SAPLs de curso deste servidor

date

for i in $( ls ); do
  if [[ $i = "sapl"* ]]; then
    echo "Parando " $i
    cd $i
    docker-compose down
    cd ..
  fi
done

