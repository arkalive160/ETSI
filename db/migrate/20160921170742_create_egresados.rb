class CreateEgresados < ActiveRecord::Migration[5.0]
  def change
    create_table :egresados do |t|
      t.boolean :es_empleado
      t.string :caracter_empleo
      t.date :fecha_egreso

      t.timestamps
    end
  end
end
