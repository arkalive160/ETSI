class Material < ApplicationRecord
    has_and_belongs_to_many :unidads
    has_and_belongs_to_many :asignaturas
end
