class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.string :diametro
      t.integer :lista_id
      t.references :parteobra, index: true

      t.timestamps
    end
  end
end
