class CreateCultivos < ActiveRecord::Migration[5.0]
  def change
    create_table :cultivos do |t|
      t.datetime :data_cultivo
      t.integer :tipo_cultivo_id
      t.string :descricao

      t.timestamps
    end
  end
end
