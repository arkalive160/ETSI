class Taller < ApplicationRecord
    has_many :programas
    belongs_to :locacion
    accepts_nested_attributes_for :programas
end
