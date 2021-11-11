#language: pt

@contribuicao
Funcionalidade: Contribuição
Como admirador de Gunpla
Eu quero poder contribuir com modelos que eu quiser
Para que eu possa ajudar a crescer o catálogo

Cenário: Inserir informações sobre um modelo
Dado que o estou na tela principal
Quando clico no botão Criar novo item
Quando preencho o campo Nome com "RG XM-X1 Crossbone Gundam X-1"
Quando preencho o campo Qualidade com "RG"
Quando preencho o campo Ano com "2019"
Quando preencho o campo Escala com "1/144"
Quando preencho o campo Série com "XM-X1 Crossbone Gundam X-1"
Quando preencho o campo Imagem com "https://static.wikia.nocookie.net/gunplabuilders/images/f/ff/RG-Crossbone-Gundam-box.jpg/revision/latest/scale-to-width-down/350?cb=20190524120957"
Quando clico em create toy
Então deverá ser mostrado o modelo "RG XM-X1 Crossbone Gundam X-1"

Cenário: Voltar para pagina principal
Dado que o estou na tela de Contribuição
E clico em voltar
Então deverá retornar para a página inicial

Cenário: Editar uma colaboração
Dado que eu estou na página do modelo que eu criei
Quando eu clicar em Editar
Quando eu modificar o campo nome com "MSN-04 Sazabi"
Quando eu modificar o campo escala com "1/145"
Quando eu clicar em Update toy
Então o nome e escala agora são "MSN-04 Sazabi" e "1/145"