class CreateUnidads < ActiveRecord::Migration[5.0]
  def change
    create_table :unidads do |t|
      t.string :nombre_unidad
      t.text :competencias
      t.integer :horas_unidad
      t.belongs_to :modulo, index: true
      t.timestamps 
    end
  end
end
