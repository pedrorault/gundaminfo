Dado('que o estou na tela principal') do
    visit '/'
end
  
Quando('clico no botão Criar novo item') do
    click_on "Criar novo item"
end
  
Quando('preencho o campo Nome com {string}') do |string|
    fill_in "toy[nome]", :with => string
end
  
Quando('preencho o campo Qualidade com {string}') do |string|
    fill_in "toy_qualidade", :with => string
end
  
Quando('preencho o campo Ano com {string}') do |string|
    fill_in "toy_ano", :with => string
end
  
Quando('preencho o campo Escala com {string}') do |string|
    fill_in "toy_escala", :with => string
end
  
Quando('preencho o campo Série com {string}') do |string|
    fill_in "toy_serie", :with => string
end
  
Quando('preencho o campo Imagem com {string}') do |string|
    fill_in "toy_imagem", :with => string
end
  
Quando('clico em create toy') do
    click_on "Create Toy"
end
  
Então('deverá ser mostrado o modelo {string}') do |string|
    expect(page).to have_content(string)
    expect(page).to_not have_content('Create Toy')
end
  
Dado('que o estou na tela de Contribuição') do
    visit '/toys/new'
end
  
Dado('clico em voltar') do
    click_on "Voltar"
end
  
Então('deverá retornar para a página inicial') do
    expect(page).to have_content('Modelos de Gunpla')
end 