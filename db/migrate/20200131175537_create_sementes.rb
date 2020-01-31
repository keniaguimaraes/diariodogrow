class CreateSementes < ActiveRecord::Migration[5.0]
  def change
    create_table :sementes do |t|
      t.integer :tipo_semente_id
      t.integer :especie_id
      t.integer :genero_id
      t.integer :tipo_solo_id
      t.datetime :data_plantio
      t.datetime :data_colheita
      t.integer :cultivo_id

      t.timestamps
    end
  end
end
