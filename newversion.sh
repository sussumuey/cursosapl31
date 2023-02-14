#!/bin/bash

# Modifica a versão do sapl todos os sistemas de curso deste servidor

date

for i in $( ls ); do
  if [[ $i = "sapl"* ]]; then
    echo "Atualizando " $i
    sed -i 's/sapl:3.1.163-RC7/sapl:3.1.163-RC9/g' $i/docker-compose.yml
#    sed -i 's/postgres:9.6.12/postgres:10.5/g' $i/docker-compose.yml
  fi
done

