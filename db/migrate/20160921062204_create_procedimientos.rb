class CreateProcedimientos < ActiveRecord::Migration[5.0]
  def change
    create_table :procedimientos do |t|
      t.string :titulo
      t.string :descripcion
      t.string :imagen
      t.belongs_to :componente_practico, index: true

      t.timestamps
    end
  end
end
