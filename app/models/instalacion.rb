class Instalacion < ApplicationRecord
    belongs_to :programa
    validates_presence_of :talleres_fisico_espacial
end
