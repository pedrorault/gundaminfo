Dado('que o usuário esteja na tela principal') do
    visit 'http://localhost:3000/'
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
  
Então('deverá ser mostrado {int} modelos correspondentes') do |int|
    qtd = page.all("h3").size
    if(qtd != int)
        raise "a quantidade é de #{int}, total de #{qtd}"
    end
end