class CreateEstudianteEgresados < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiante_egresados do |t|
      t.string :nombre
      t.string :apellido
      t.string :genero
      t.integer :edad
      t.date :fecha_nacimiento
      t.integer :numero_identificacion
      t.string :grupo_etnico
      t.string :nivel_escolaridad
      t.boolean :es_empleado
      t.string :caracter_empleo
      t.date :fecha_egreso
      t.belongs_to :programa, index: true

      t.timestamps
    end
  end
end
