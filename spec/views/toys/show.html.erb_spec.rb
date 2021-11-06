require 'rails_helper'

RSpec.describe "toys/show", type: :view do
  before(:each) do
    @toy = assign(:toy, Toy.create!(
      nome: "Nome",
      qualidade: "Qualidade",
      ano: 2,
      escala: "Escala",
      serie: "Serie",
      imagem: "x"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Qualidade/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Escala/)
    expect(rendered).to match(/Serie/)
    expect(rendered).to match(/x/)
  end
end
