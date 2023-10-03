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

## Filtrando resultado de busca de IP

Primeiro crie a pasta apache-log e se mova para ela:

```bash
mkdir apache-log && cd apache-log
```
Em seguida, iremos usar este arquivo que será baixado através do link abaixo para fazer uma busca que retorne IPs válidos:

```bash
wget https://caelum-online-public.s3.amazonaws.com/shell-script/parte2/aula_1/apache.log
```

Então, basta que execute o código abaixo trocando o parâmetro "ip" por um IP para saber se ele consta ou não no arquivo de log:

```bash
bash filtrando-resultado.sh "ip"
```

É necessário que o código bash e a pasta apache-log estejam no mesmo diretório criada acima para que o código funcione.

## Filtrando novas requisições no arquivo de log

Para executar este código, iremos utilizar o mesmo arquivo de log baixado acima, basta substituir o parâmetro "req" por GET, PUT, POST ou DELETE:

```bash
bash filtrando-novas-requisicoes.sh "req"
```
O aviso para que o ódigo bash e a pasta apache-log estejam no mesmo diretório também é válido aqui.

## Backup de dados do MySQL

Primeiro, é necessário que baixe primeiro o MySQL server:

```bash
sudo apt-get install mysql-server -y
```

Feito isso, entre no MySQL com o comando:

```bash
sudo mysql -u root
```

Na sequência crie o banco chamado mutillidae:

```bash
create database mutillidae;
```

Devemos agora indicar que iremos utilizá-lo:

```bash
use mutillidae
```

Com isso, devemos criar as duas tabelas do nosso sistema produtos e usuarios:

```bash
create table produtos(livro VARCHAR(255), autor VARCHAR(255), preco_ebook VARCHAR(255), preco_livro VARCHAR(255));
create table usuarios(nome VARCHAR(255), email VARCHAR(255), telefone VARCHAR(255), cidade VARCHAR(255));
```

Agora basta rodar o código para fazer o backup de dados da tabela de preferência:

```bash
bash backup-dados-mysql.sh
```

## Backup na nuvem dos dados do MySQL

Para rodar este código, é necessário que baixe primeiro a [aws cli](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) e siga os passos para configurar seu ambiente da aws cli para poder ser capaz de rodar, além disso, também é preciso que instale o MySQL server caso ainda não tenha feito, o passo a passo está logo acima, agora basta digitar o código abaixo:

```bash
bash backup-amazon.sh
```