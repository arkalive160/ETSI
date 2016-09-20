class CreateInstalacions < ActiveRecord::Migration[5.0]
  def change
    create_table :instalacions do |t|
      t.belongs_to :instalacion, index: true
      t.string :aulas_fisico_espacial
      t.string :talleres_fisico_espacial
      t.string :aulas_mobiliario
      t.string :talleres_mobiliario

      t.timestamps
    end
  end
end
