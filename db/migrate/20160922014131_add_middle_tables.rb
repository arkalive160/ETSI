class AddMiddleTables < ActiveRecord::Migration[5.0]
  def change

    create_table :asignaturas_materials, id: false do |t|
      t.belongs_to :asignatura, index: true
      t.belongs_to :material, index: true
    end
    
    create_table :unidads_materials, id: false do |t|
      t.belongs_to :unidad, index: true
      t.belongs_to :material, index: true
    end

  end
end
