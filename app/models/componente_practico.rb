class ComponentePractico < ApplicationRecord
    has_many :modulos
    has_many :procedimientos
    belongs_to :programa
end
