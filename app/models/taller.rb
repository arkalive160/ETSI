class Taller < ApplicationRecord
    has_many :programas
    belongs_to :locacion
end
