class AddModeradoToToy < ActiveRecord::Migration[6.1]
  def change
    add_column :toys, :moderado, :boolean, :default => true
    change_column :toys, :moderado, :boolean, :default => false
  end
end
