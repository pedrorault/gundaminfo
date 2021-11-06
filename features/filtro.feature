#language: pt

Funcionalidade: Filtro de modelos
Como usuario
Eu quero poder filtrar os modelos
Para poder achar modelos desejados mais facilmente

Cenário: Filtro por nome
Dado que o usuário esteja na tela principal
E selecione o atributo "Nome"
Quando preencho o campo "value" com "zak"
E clico em procurar
Então deverá ser mostrado 1 modelos correspondentes

Cenário: Filtro por ano
Dado que o usuário esteja na tela principal
E selecione o atributo "Ano"
Quando preencho o campo "value" com "1999"
E clico em procurar
Então deverá ser mostrado 1 modelos correspondentes

Cenário: Filtro por qualidade
Dado que o usuário esteja na tela principal
E selecione o atributo "Qualidade"
Quando preencho o campo "value" com "rg"
E clico em procurar
Então deverá ser mostrado 2 modelos correspondentes

