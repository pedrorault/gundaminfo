#language: pt

Funcionalidade: Usuário
Como admirador de Gunpla
Eu quero criar um usuário
Para que eu tenha acesso a funcionalidades exclusivas

Cenário: Criar cadastro
Dado que o estou na tela principal
Quando clico no botão login
Então deverá ser redirecionado para tela de login
Quando clico no botão Criar usuário
Então deverá ser redirecionado para tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
Quando preencho o campo apelido com "Flavinho"
Quando preencho o campo senha com "flavinho123"
Quando clico em criar cadastro
Então deverá aparecer na tela "Usuário criado com sucesso"

Cenário: cadastro - campo apelido sem preecher
Dado que o estou na tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
E preencho o campo senha com "flavinho123"
E clico em criar cadastro
Então deverá aparecer na tela "NOP"

Cenário: cadastro - campo e-mail sem preecher
Dado que o estou na tela de cadastro
Quando preencho o campo apelido com "Flavinho"
E preencho o campo senha com "flavinho123"
E clico em criar cadastro
Então deverá aparecer na tela "NOP"

Cenário: cadastro - campo senha sem preecher
Dado que o estou na tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
Quando preencho o campo apelido com "Flavinho"
E clico em criar cadastro
Então deverá aparecer na tela "NOP"

Cenário: cadastro - e-mail já utilizado
Dado que o estou na tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
Quando preencho o campo apelido com "Raziel"
Quando preencho o campo senha com "macarrao777"
Quando clico em criar cadastro
Então deverá aparecer na tela "E-mail já utilizado"

Cenário: cadastro - apelido já utilizado
Dado que o estou na tela de cadastro
Quando preencho o campo e-mail com "flavinho@usp.br"
Quando preencho o campo apelido com "flavinho"
Quando preencho o campo senha com "macarrao777"
Quando clico em criar cadastro
Então deverá aparecer na tela "Apelido indisponível"

Cenário: login
Dado que o estou na tela de login
Quando preencho o campo apelido com "Flavinho"
E preencho o campo senha com "flavinho123"
E clico em login
Então deverá ser redirecionado para a tela principal
E deverá aparecer "Flavinho" na tela

Cenário: login - campo senha incorreto
Dado que o estou na tela de login
Quando preencho o campo apelido com "Flavinho"
E preencho o campo senha com "flavinho1234"
E clico em login
Então deverá aparecer "informações inválidas" na tela

Cenário: login - campo apelido incorreto
Dado que o estou na tela de login
Quando preencho o campo apelido com "Flavinhu"
E preencho o campo senha com "flavinho123"
E clico em login
Então deverá aparecer "informações inválidas" na tela