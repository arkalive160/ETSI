class CreateModulos < ActiveRecord::Migration[5.0]
  def change
    create_table :modulos do |t|
      t.string :nombre
      t.integer :horas_modulo
      t.text :descripcion

      t.timestamps
    end
  end
end
