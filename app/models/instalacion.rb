class Instalacion < ApplicationRecord
    attr_accessible :aulas_fisico_espacial, :talleres_fisico_espacial, :aulas_mobiliario, :talleres_mobiliario
    belongs_to :programa
end
