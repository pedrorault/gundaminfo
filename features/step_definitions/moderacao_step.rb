Dado('que o usuário está na pagina inicial') do
    visit "/"
end    

Dado('que o usuário é um moderador') do
    click_on "Log in"
    fill_in "session[email]", :with => 'admin@admin.com'
    fill_in "session[password]", :with => 'adminadmin'
    click_on "commit"
  end
  
  Quando('ele acessar a pagina inicial ele verá um botao {string}') do |string|
    visit "/"
    expect(page).to have_content(string)
  end
  
  Quando('ele clicar em {string}') do |string|
    click_on string
  end
  
  Então('ele deverá ser redirecionado para a página com {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Dado('que ele está na página de {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Quando('clicar em {string}') do |string|
    visit "/moderacao"
    click_on string
  end

  Dado('que tenha um modelo para moderação') do
    visit "/toys/new"
    fill_in "toy[nome]", :with => "Gundam Teste"
    fill_in "toy[qualidade]", :with => "RG"
    fill_in "toy[ano]", :with => "1999"
    fill_in "toy[escala]", :with => "1/144"
    fill_in "toy[serie]", :with => "teste"
    fill_in "toy[imagem]", :with => ""
    click_on "Criar Toy"
  end

  Então('o modelo gunpla deve ser adicionado na tela inicial') do
    visit "/"
    expect(page).to have_content("Gundam Teste")
  end
  
  Então('o modelo deve ter sido deletado') do
    visit "/moderacao"
    expect(page).to have_content("Não há modelos com status de moderado = false!!")
  end
