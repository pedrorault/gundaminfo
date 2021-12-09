#language: pt

Funcionalidade: Confiabilidade
Como moderador
Eu quero poder marcar as informações como verdadeiras
Para que os usuários identifiquem informações confiaveis

Cenário: Visualização de modelos para moderação
Dado que o usuário está na pagina inicial 
Dado que o usuário é um moderador
Quando ele acessar a pagina inicial ele verá um botao "Modelos pendentes"
Quando ele clicar em "Modelos pendentes"
Então ele deverá ser redirecionado para a página com "Moderar Modelos Pendentes"

Cenário: Aceitar modelo
Dado que o usuário está na pagina inicial 
Dado que o usuário é um moderador
Dado que ele está na página de "Modelos pendentes"
Dado que tenha um modelo para moderação
Quando clicar em "Aceitar"
Então o modelo gunpla deve ser adicionado na tela inicial

Cenário: Descartar modelo
Dado que o usuário está na pagina inicial 
Dado que o usuário é um moderador
Dado que ele está na página de "Modelos pendentes"
Dado que tenha um modelo para moderação
Quando clicar em "Recusar"
Então o modelo deve ter sido deletado