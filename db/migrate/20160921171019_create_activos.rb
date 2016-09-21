class CreateActivos < ActiveRecord::Migration[5.0]
  def change
    create_table :activos do |t|
      t.date :fecha_ingreso
      t.integer :codigo

      t.timestamps
    end
  end
end
