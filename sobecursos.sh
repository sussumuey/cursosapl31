#!/bin/bash

# Inicia todos os SAPLs de curso deste servidor

date
cd /var/interlegis/cursosapl31
for i in $( ls ); do
  if [[ $i = "sapl"* ]]; then
    echo "startando " $i
    cd $i
    docker-compose up -d
    sleep 15
    cd ..
  fi
done

