class Unidad < ApplicationRecord
    belongs_to :modulo
    has_and_belongs_to_many :materials
end
