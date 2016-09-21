class Programa < ApplicationRecord
    
    has_one :instalacion
    belongs_to :taller
    has_one :componente_practico 
    has_one :componente_teorico
    has_many :estudiante_egresados
    has_many :estudiante_activos
    
end
