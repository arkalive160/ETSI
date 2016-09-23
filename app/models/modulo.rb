class Modulo < ApplicationRecord
    belongs_to :componente_practico
    has_many :unidads, dependent: :destroy
    accepts_nested_attributes_for :unidads
end
