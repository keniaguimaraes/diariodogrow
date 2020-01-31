class CreateEspecies < ActiveRecord::Migration[5.0]
  def change
    create_table :especies do |t|
      t.string :descricao

      t.timestamps
    end
  end
end
