#!/bin/bash
cd apache-log

if [ -z $1 ]
then
    while [ -z $requisicao ]
    do
        read -p "Você esqueceu de colocar o parâmetro (GET, PUT, POST, DELETE): " requisicao
        letra_maiscula=$(echo $requisicao | awk '{ print toupper($1) }')
    done
else
    letra_maiscula=$(echo $1 | awk '{ print toupper($1) }')
fi
case $letra_maiscula in
        GET)
            cat apache.log | grep GET
        ;;
        POST)
            cat apache.log | grep POST
        ;;
        PUT)
            cat apache.log | grep PUT
        ;;
        DELETE)
            cat apache.log | grep DELETE
        ;;
        *)
            echo "O parâmetro não é válido"
        ;;
esac