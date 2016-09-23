class Locacion < ApplicationRecord
    has_one :taller
    accepts_nested_attributes_for :taller
end
