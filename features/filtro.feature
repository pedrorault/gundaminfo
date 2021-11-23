#language: pt

Funcionalidade: Filtro de modelos
Como usuario
Eu quero poder filtrar os modelos
Para poder achar modelos desejados mais facilmente

Cenário: Filtro por nome
Dado que o usuário esteja na tela principal
E selecione o atributo "Nome"
Quando preencho o campo "value" com "zakku"
E clico em procurar
Então deverá ser mostrado o modelo com nome "Zakku II"

Cenário: Filtro por ano
Dado que o usuário esteja na tela principal
E selecione o atributo "Ano"
Quando preencho o campo "value" com "2021"
E clico em procurar
Então deverá ser mostrado o modelo gunpla "RG MSN-02 Zeong"

Cenário: Filtro por qualidade
Dado que o usuário esteja na tela principal
E selecione o atributo "Qualidade"
Quando preencho o campo "value" com "rg"
E clico em procurar
Então deverá ser mostrado o modelo "RG MS-06R-2" e "OZ-00MS"

Cenário: Filtro por escala
Dado que o usuário esteja na tela principal
E selecione o atributo "Escala"
Quando preencho o campo "value" com "1/144"
E clico em procurar
Então deverá ser mostrado o modelo "RG MSN-02 Zeong"

Cenário: Filtro por série
Dado que o usuário esteja na tela principal
E selecione o atributo "Série"
Quando preencho o campo "value" com "Mobile Suit Gundam"
E clico em procurar
Então deverá ser mostrado o modelo "RG MS-06F Zaku II"

