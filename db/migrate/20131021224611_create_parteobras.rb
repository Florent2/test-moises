class CreateParteobras < ActiveRecord::Migration
  def change
    create_table :parteobras do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
