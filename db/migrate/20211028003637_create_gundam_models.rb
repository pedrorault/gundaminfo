class CreateGundamModels < ActiveRecord::Migration[6.1]
  def change
    create_table :gundam_models do |t|
      t.string :nome
      t.string :qualidade
      t.integer :ano
      t.string :escala
      t.string :serie
      t.string :imagem

      t.timestamps
    end
  end
end
