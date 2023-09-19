#!/bin/bash

CAMINHO_IMAGEM=~/Downloads/imagens-livros

for imagem in $@
do
    convert $CAMINHO_IMAGEM/$imagem.jpg $CAMINHO_IMAGEM/$imagem.png
done