class CreateEstudiantes < ActiveRecord::Migration[5.0]
  def change
    create_table :estudiantes do |t|
      t.string :numero_identificacion
      t.string :nombre
      t.string :apellido
      t.boolean :genero
      t.integer :edad
      t.date :fecha_nacimiento
      t.string :grupo_etnico
      t.string :nivel_escolaridad

      t.timestamps
    end
  end
end
