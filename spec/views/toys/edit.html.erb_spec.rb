require 'rails_helper'

RSpec.describe "toys/edit", type: :view do
  before(:each) do
    @toy = assign(:toy, Toy.create!(
      nome: "MyString",
      qualidade: "MyString",
      ano: 1,
      escala: "MyString",
      serie: "MyString"
    ))
  end

  it "renders the edit toy form" do
    render

    assert_select "form[action=?][method=?]", toy_path(@toy), "post" do

      assert_select "input[name=?]", "toy[nome]"

      assert_select "input[name=?]", "toy[qualidade]"

      assert_select "input[name=?]", "toy[ano]"

      assert_select "input[name=?]", "toy[escala]"

      assert_select "input[name=?]", "toy[serie]"
    end
  end
end
