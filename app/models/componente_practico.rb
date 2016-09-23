class ComponentePractico < ApplicationRecord
    has_many :modulos, dependent: :destroy
    has_many :procedimientos
    belongs_to :programa
    accepts_nested_attributes_for :modulos, :procedimientos
end
