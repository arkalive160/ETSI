class AddCollumsToPrograma < ActiveRecord::Migration[5.0]
  def change
    add_column :programas, :competencia_general, :text
    add_column :programas, :unidades_competencia, :text
  end
end
