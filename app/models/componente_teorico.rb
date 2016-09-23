class ComponenteTeorico < ApplicationRecord
    has_many :asignaturas, dependent: :destroy
    belongs_to :programa
    accepts_nested_attributes_for :asignaturas
    
end
