class CreateTipoCultivos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_cultivos do |t|
       t.string :descricao

      t.timestamps
    end
  end
end
