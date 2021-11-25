Quando('clico no botão Registrar') do
  click_on "Registrar"
end

Então('deverá ser redirecionado para tela de cadastro') do
  expect(page).to have_content("Criar um novo usuário")
end

Quando('preencho o campo e-mail com {string}') do |string|
  fill_in "user[email]", :with => string
end

Quando('preencho o campo apelido com {string}') do |string|
  fill_in "user[apelido]", :with => string
end

Quando('preencho o campo senha com {string}') do |string|
  fill_in "user[password]", :with => string
end

Quando('clico em criar cadastro') do
  click_on "Criar Usuário"
end

Então('deverá aparecer na tela {string}') do |string|
  expect(page).to have_content(string)
end

Dado('que o estou na tela de cadastro') do
  visit "/users/new"
end

Dado('que o estou na tela de login') do
  visit "/login"
end

Quando('clico em login') do
  click_on "Log in"
end

Então('deverá aparecer {string}') do |string|
  expect(page).to have_content(string)
end

Quando('preencho o campo e-mail do login com {string}') do |string|
  fill_in "session[email]", :with => string
end

Quando('preencho o campo senha do login com {string}') do |string|
  fill_in "session[password]", :with => string
end

Quando('clico em login na pagina') do
  click_on "commit"
end

Então('deverá ir para a página inicial') do
  expect(page).to have_content("GunplaCollect")
end