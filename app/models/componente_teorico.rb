class ComponenteTeorico < ApplicationRecord
    has_many :asignaturas
    belongs_to :programa
    
end
