class CreateLocacions < ActiveRecord::Migration[5.0]
  def change
    create_table :locacions do |t|
      t.string :pais
      t.string :ciudad
      t.string :direccion
      

      t.timestamps
    end
  end
end
