class CreateDiarios < ActiveRecord::Migration[5.0]
  def change
    create_table :diarios do |t|
      t.integer :semente_id
      t.integer :semana
      t.float :temperatura
      t.float :umidade
      t.integer :fotoperiodo_id
      t.integer :status_id
      t.text :comentario
      t.integer :tecnica_id

      t.timestamps
    end
  end
end
