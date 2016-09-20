class Programa < ApplicationRecord
    attr_accessible :nombre_programa, :tipo_educacion, :titulo_ortorga, :tiempo_formacion, :familia_profesional
    has_one :instalacion
    
end
