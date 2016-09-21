class Modulo < ApplicationRecord
    belongs_to :componente_practico
    has_many :unidads
end
