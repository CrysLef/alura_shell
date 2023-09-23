# Objetivo

Este repositório serve para práticar comandos shell a partir de aulas ministradas pela Alura na sua formação de Shell script.

# Como rodar

Primeiramente, clone este repositório e depois execute os passos abaixo para rodar cada um dos scripts.

```bash
git clone https://github.com/CrysLef/alura_shell.git
```

## Conversão JPG para PNG

Para rodar esse script, antes você deve baixar o repositório de imagens para fazer o teste de conversão, porém, é possível usar em qualquer diretório que contenha alguma imagem com a extensão JPG:

```bash
wget https://caelum-online-public.s3.amazonaws.com/shell-script/aula_3/imagens-novos-livros.zip && unzip imagens-novos-livros.zip 
```

Logo após o download, basta executar o comando abaixo, usando o caminho da pasta baixada acima ou de sua preferencia como parâmetro:

```bash
bash conversao-jpg-png caminho/repo/img_jpg
```
## Processos memória

Para rodar este script basta apenas que execute o código abaixo no terminal:
```bash
bash processos-memoria.sh
```