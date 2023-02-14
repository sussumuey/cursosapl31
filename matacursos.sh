#!/bin/bash

# Apaga todos os SAPLs de curso deste servidor

date
cd /var/interlegis/cursosapl31
for i in $( ls ); do
  if [[ $i = "sapl"* ]]; then
    echo "matando " $i
    cd $i
    docker-compose down -v
    cd ..
  fi
done
docker volume prune -f
