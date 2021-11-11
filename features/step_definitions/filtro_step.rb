Dado('que o usuário esteja na tela principal') do
    visit '/'
  end
  
  Dado('selecione o atributo {string}') do |string|
    select string, :from => "attr"
  end
  
  Quando('preencho o campo {string} com {string}') do |string, string2|
    fill_in string, :with => string2
  end
  
  Quando('clico em procurar') do
    click_on "Procurar"
  end
  
  Então('deverá ser mostrado o modelo com nome {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Então('deverá ser mostrado o modelo gunpla {string}') do |string|
    expect(page).to have_content(string)
  end
  
  Então('deverá ser mostrado o modelo {string} e {string}') do |string, string2|
    expect(page).to have_content(string)
    expect(page).to have_content(string2)
  end
