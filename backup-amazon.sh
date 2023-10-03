#!/bin/bash

tabelas=$(mysqldump -u root multilidae -e "show tables;" | grep -v Tables)
CAMINHO_BACKUP=$(pwd)/backup-amazon
data=$(date +%F)

cria_pasta(){
    if [ ! -d $1 ]
    then
        mkdir $1
    fi
}

cria_pasta backup-amazon
cria_pasta $CAMINHO_BACKUP/$data

for tabela in tabelas
do
    mysqldump -u root multilidae $tabela > $CAMINHO_BACKUP/$data/$tabela.sql 
done

aws s3api create-bucket --bucket alura-backup-multilidae --region us-east-1

aws s3 sync $CAMINHO_BACKUP s3://alura-backup-multilidae