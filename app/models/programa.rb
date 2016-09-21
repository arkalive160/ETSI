class Programa < ApplicationRecord
    
    has_one :instalacion
    belongs_to :taller
    has_one :componente_practico 
    has_one :componente_teorico
    has_and_belongs_to_many :estudiantes
    
end
