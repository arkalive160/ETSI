class CreateProgramas < ActiveRecord::Migration[5.0]
  def change
    create_table :programas do |t|
      t.string :nombre_programa
      t.boolean :tipo_educacion
      t.string :titulo_otorga
      t.integer :tiempo_formacion
      t.string :familia_profesional
      t.belongs_to :taller, index: true

      t.timestamps
    end
  end
end
