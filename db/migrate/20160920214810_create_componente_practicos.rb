class CreateComponentePracticos < ActiveRecord::Migration[5.0]
  def change
    create_table :componente_practicos do |t|
      t.string :nombre_practico
      t.integer :total_horas
      t.belongs_to :programa, index: true

      t.timestamps
    end
  end
end
