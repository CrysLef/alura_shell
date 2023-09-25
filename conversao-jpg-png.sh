#!/bin/bash

converte_imagem(){

    local caminho_img=$1

    local img_sem_extensao=$(ls $caminho_img | awk -F. '{ print $1 }')
    convert $img_sem_extensao.jpg $img_sem_extensao.png

}

varrer_diretorio(){
    cd $1
    
    local regex="\.jpg$"
    
    for arquivo in *
    do
        local caminho_arquivo=$(find $1 -name $arquivo)

        if [ -d $caminho_arquivo ]
        then
            varrer_diretorio $caminho_arquivo
        else
            if [[ $caminho_arquivo =~ $regex ]]
            then
                converte_imagem $caminho_arquivo
            fi
        fi
    done
}

varrer_diretorio $1

if [ $? -eq 0 ] 
then
    echo "Conversao realizada com sucesso"
else
    echo "Ocorreu um erro na conversao"

fi