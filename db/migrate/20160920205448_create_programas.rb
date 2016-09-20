class CreateProgramas < ActiveRecord::Migration[5.0]
  def change
    create_table :programas do |t|
      t.string :nombre_programa
      t.boolean :tipo_educacion
      t.string :titulo_ortorga
      t.integer :tiempo_formacion
      t.string :familia_profesional

      t.timestamps
    end
  end
end
