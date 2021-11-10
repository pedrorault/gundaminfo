[![.github/workflows/tests.yml](https://github.com/pedrorault/gundaminfo/actions/workflows/tests.yml/badge.svg)](https://github.com/pedrorault/gundaminfo/actions/workflows/tests.yml)
[![Maintainability](https://api.codeclimate.com/v1/badges/ccf5b3f9067cd1231d30/maintainability)](https://codeclimate.com/github/pedrorault/gundaminfo/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/ccf5b3f9067cd1231d30/test_coverage)](https://codeclimate.com/github/pedrorault/gundaminfo/test_coverage)
[![Heroku](https://img.icons8.com/color/30/000000/heroku.png)](https://gundaminfo.herokuapp.com/)


# GundamInfo

| Grupo 5 |
| --- |
| Flavio de Figueiroa Teixeira Silva |
| Ian Lourenco Bezerra da Silva | 
| Pedro Raul Taborga da Costa | 
| Pedro Paulo Rodrigues da Silva |

O objetivo do projeto é fornecer uma API+Front para a amostragem de diversos modelos de Gundam que serão scrapeadas das fontes do fabricante e wiki. Será possível filtrar por modelo, qualidade, etc, além de exibir fotos e links relacionados.

## RBenv

Utilizado para configurar a versão do ruby sem querer arrancar os olhos fora.

### Instalação

Guia de instalação: [https://github.com/rbenv/rbenv#installation](https://github.com/rbenv/rbenv)
1. Instale o rbenv
    ```sh 
    sudo apt install rbenv 
    ```
2. Configure o rbenv seguindo as instruções do comando
    ```sh 
    rbenv init
    ```
3. Instale o [ruby-build](https://github.com/rbenv/ruby-build#installation)
    ```sh
    mkdir -p "$(rbenv root)"/plugins
    git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
    ```
4. Verifique que tudo está nos conformes com
    ```sh
    rbenv install --list | grep 3.0.2
    ```
    que deverá retornar uma lista de versões que contém 3.0.2
5. Instale a versão estável mais recente e defina como a que vai ser usada
    ```sh
    rbenv install 3.0.2
    rbenv local 3.0.2
    rbenv version
    ```

1. Suba o container do docker com ```docker-compose up -d``` para ter o banco de dados local

2. Utilize o comando ```rails db:create``` para criar o db (ou ```db:migrate``` para alguma alteração)

3. Utilize o comando ```rails server``` para iniciar o projeto.