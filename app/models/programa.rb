class Programa < ApplicationRecord
    
    has_one :instalacion, dependent: :destroy
    belongs_to :taller
    has_one :componente_practico, dependent: :destroy
    has_one :componente_teorico, dependent: :destroy
    has_many :estudiante_egresados
    has_many :estudiante_activos
    
    accepts_nested_attributes_for :instalacion, :componente_practico, :estudiante_egresados, :estudiante_activos
end
