require 'rails_helper'

RSpec.describe "toys/new", type: :view do
  before(:each) do
    assign(:toy, Toy.new(
      nome: "MyString",
      qualidade: "MyString",
      ano: 1,
      escala: "MyString",
      serie: "MyString"
    ))
  end

  it "renders new toy form" do
    render

    assert_select "form[action=?][method=?]", toys_path, "post" do

      assert_select "input[name=?]", "toy[nome]"

      assert_select "input[name=?]", "toy[qualidade]"

      assert_select "input[name=?]", "toy[ano]"

      assert_select "input[name=?]", "toy[escala]"

      assert_select "input[name=?]", "toy[serie]"
    end
  end
end
