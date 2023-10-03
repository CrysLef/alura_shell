#!/bin/bash

$CAMINHO_BACKUP=$(pwd)/backup_mysql

if [ ! -d backup_mysql ]
then
  mkdir backup_mysql
fi

mysqldump -u root $1 > $CAMINHO_BACKUP/$1.sql

if [ $? -eq 0 ]
then
  echo "Backup foi realizado com sucesso"
else
  echo "Houve um problema no backup"
fi
