class Asignatura < ApplicationRecord
    belongs_to :componente_teorico
    has_and_belongs_to_many :materials
    
end
