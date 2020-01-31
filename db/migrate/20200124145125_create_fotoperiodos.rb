class CreateFotoperiodos < ActiveRecord::Migration[5.0]
  def change
    create_table :fotoperiodos do |t|
      t.string :descricao
      t.integer :horas

      t.timestamps
    end
  end
end
