require 'rails_helper'

RSpec.describe "toys/index", type: :view do
  before(:each) do
    assign(:toys, [
      Toy.create!(
        nome: "Nome",
        qualidade: "Qualidade",
        ano: 2,
        escala: "Escala",
        serie: "Serie"
      ),
      Toy.create!(
        nome: "Nome",
        qualidade: "Qualidade",
        ano: 2,
        escala: "Escala",
        serie: "Serie"
      )
    ])
  end

  it "renders a list of toys" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
    assert_select "tr>td", text: "Qualidade".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Escala".to_s, count: 2
    assert_select "tr>td", text: "Serie".to_s, count: 2
  end
end
