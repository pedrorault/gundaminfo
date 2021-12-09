require 'rails_helper'

RSpec.describe Toy, type: :model do
  context "Aplicar Filtros" do
    it "Filtro por nome válido" do
      nome = "RG RX-78-2 Gundam"
      lista = Toy.all.filter_by_name_like(nome)
      expect(lista.length).to be 1
    end
    it "Filtro com nome inexistente" do
      nome = " nvjdfsnvgjik"
      lista = Toy.all.filter_by_name_like(nome)
      expect(lista.length).to be 0
    end
    it "Filtro por ano válido" do
      ano = "2021"
      lista = Toy.all.filter_by_ano(ano)
      expect(lista.length).to be 1
    end
    it "Filtro por ano inexistente" do
      ano = "2056"
      lista = Toy.all.filter_by_ano(ano)
      expect(lista.length).to be 0
    end
    it "Filtro por escala válido" do
      escala = "1/144"
      lista = Toy.all.filter_by_escala(escala)
      expect(lista.length).to be 35
    end
    it "Filtro por escala inexistente" do
      escala = "1/666"
      lista = Toy.all.filter_by_escala(escala)
      expect(lista.length).to be 0
    end
    it "Filtro por série válido" do
      serie = "Gundam The Origin"
      lista = Toy.all.filter_by_serie(serie)
      expect(lista.length).to be 1
    end
    it "Filtro por série inexistente" do
      serie = "Gundam The Return"
      lista = Toy.all.filter_by_serie(serie)
      expect(lista.length).to be 0
    end
    it "Filtro por qualidade válido" do
      qualidade = "RG"
      lista = Toy.all.filter_by_qualidade(qualidade)
      expect(lista.length).to be 35
    end
    it "Filtro por qualidade inexistente" do
      qualidade = "PP"
      lista = Toy.all.filter_by_qualidade(qualidade)
      expect(lista.length).to be 0
    end
  end

end
