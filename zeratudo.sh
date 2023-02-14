#!/bin/bash

# Apaga todos os SAPLs de curso deste servidor

date
./paracursos.sh
cd /var/lib/docker/volumes
echo "Fazendo backup do ambiente anterior..."
tar -czf /var/backups/cursosapl.backup.tar.gz *
cd /var/interlegis/cursosapl31
echo "Apagando ambientes de cursos..."
./matacursos.sh
echo "Criando novos ambientes..."
./criacursos.sh
echo "Subindo SAPLs de curso..."
./sobecursos.sh
