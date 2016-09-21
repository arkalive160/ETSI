class CreateEstudianteActivos < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiante_activos do |t|
      t.string :nombre
      t.string :apellido
      t.string :genero
      t.integer :edad
      t.date :fecha_nacimiento
      t.integer :numero_identificacion
      t.string :grupo_etnico
      t.string :nivel_escolaridad
      t.integer :codigo_estudiante, :limit => 8
      t.date :fecha_ingreso
      t.belongs_to :programa, index: true

      t.timestamps
    end
  end
end
