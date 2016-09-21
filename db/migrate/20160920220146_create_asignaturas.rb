class CreateAsignaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :asignaturas do |t|
      t.string :nombre_asignatura
      t.text :contenido
      t.integer :horas_asignatura
      t.belongs_to :componente_teorico, index: true

      t.timestamps
    end
  end
end
