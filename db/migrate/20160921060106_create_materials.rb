class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad
      t.integer :precio_unitario
      t.integer :precio_total
      t.string :tipo_material
      t.string :imagen

      t.timestamps
    end
  end
end
