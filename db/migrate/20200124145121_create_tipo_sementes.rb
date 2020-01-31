class CreateTipoSementes < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_sementes do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
