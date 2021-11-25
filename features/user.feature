#language: pt

Funcionalidade: Usuário
Como admirador de Gunpla
Eu quero criar um usuário
Para que eu tenha acesso a funcionalidades exclusivas

Cenário: Criar cadastro
Dado que o estou na tela principal
Quando clico no botão Registrar
Então deverá ser redirecionado para tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
Quando preencho o campo apelido com "Flavinho"
Quando preencho o campo senha com "flavinho123"
Quando clico em criar cadastro
Então deverá aparecer na tela "Flavinho"

Cenário: cadastro - campo apelido sem preecher
Dado que o estou na tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
E preencho o campo senha com "flavinho123"
E clico em criar cadastro
Então deverá aparecer na tela "Apelido não pode ficar em branco"

Cenário: cadastro - campo e-mail sem preecher
Dado que o estou na tela de cadastro
Quando preencho o campo apelido com "Flavinho"
E preencho o campo senha com "flavinho123"
E clico em criar cadastro
Então deverá aparecer na tela "Email não pode ficar em branco"

Cenário: cadastro - campo senha sem preecher
Dado que o estou na tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
Quando preencho o campo apelido com "Flavinho"
E clico em criar cadastro
Então deverá aparecer na tela "Password não pode ficar em branco"

Cenário: login
Dado que o estou na tela de login
Quando preencho o campo e-mail do login com "flavinho@usp.br"
Quando preencho o campo senha do login com "flavinho123"
E clico em login na pagina
Então deverá ir para a página inicial

Cenário: login - campo senha incorreto
Dado que o estou na tela de login
Quando preencho o campo e-mail do login com "flavinho@usp.br"
E preencho o campo senha do login com "flavinho1234"
E clico em login na pagina
Então deverá aparecer "Usuário não encontrado!"

Cenário: login - campo apelido incorreto
Dado que o estou na tela de login
Quando preencho o campo e-mail do login com "flavinho@usp.br"
E preencho o campo senha do login com "flavinho123"
E clico em login na pagina
Então deverá aparecer "Usuário não encontrado!"