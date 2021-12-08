Dado('que estou na tela inicial') do
    visit '/'
  end
  
  Quando('clico em comparar') do
    click_on "Comparar"
  end

  Então('deverá ser direcionado para a tela de comparação de modelos') do
    expect(page).to have_current_path("/comparacao")
  end
  
  Quando('seleciono o nome do primeiro modelo') do
    select "Zakku II", :from => "item1"
  end
  
  Quando('seleciono o nome do segundo modelo') do
    select "RG RX-78-2 Gundam", :from => "item2"
  end
  
  Quando('clicar em comparar') do
    click_on "Comparar Modelos"
  end
  
  Então('deverá aparecer na tela o primeiro modelo {string} o segundo modelo') do |string|
    expect(page).to have_content(string)
  end