require 'rails_helper'

RSpec.describe User, type: :model do
    context "Validade usuário" do
        it "Usuário é válido" do
            user = User.new
            user.apelido = "Fraviu"
            user.password_digest = "Teste123"
            user.email = "fraviu@gmail.com"
            expect(user).to be_valid
        end

        it "Usuário é inválido - Apelido nil" do
            user = User.new
            user.apelido = nil
            user.password_digest = "Teste123"
            user.email = "fraviu@gmail.com"
            expect(user).not_to be_valid
        end

        it "Usuário é inválido - Apelido curto" do
            user = User.new
            user.apelido = "abc"
            user.password_digest = "Teste123"
            user.email = "fraviu@gmail.com"
            expect(user).not_to be_valid
        end

        it "Usuário é inválido - Email nil" do
            user = User.new
            user.apelido = "Fraviu"
            user.password_digest = "Teste123"
            user.email = nil
            expect(user).not_to be_valid
        end

        it "Usuário é inválido - Email incorreto" do
            user = User.new
            user.apelido = "Fraviu"
            user.password_digest = "Teste123"
            user.email = "nao_é_umEmail"
            expect(user).not_to be_valid
        end

        it "Usuário é inválido - Senha nil" do
            user = User.new
            user.apelido = "Fraviu"
            user.password_digest = nil
            user.email = "fraviu@gmail.com"
            expect(user).not_to be_valid
        end

        it "Usuário é inválido - Senha curta" do
            user = User.new
            user.apelido = "Fraviu"
            user.password_digest = "123"
            user.email = "fraviu@gmail.com"
            expect(user).not_to be_valid
        end
    end
end