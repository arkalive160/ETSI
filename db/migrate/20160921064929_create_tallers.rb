class CreateTallers < ActiveRecord::Migration[5.0]
  def change
    create_table :tallers do |t|
      t.string :nombre_proyecto
      t.string :inst_contraparte
      t.string :responsable
      t.integer :telefono
      t.integer :fax
      t.string :email
      t.belongs_to :locacion, index: true

      t.timestamps
    end
  end
end
