class Pokemon < ApplicationRecord
  validates :name, :first_type, :second_type, presence: true
  validates :strength, :hp, :attack, :defense, :special_atk, :speed, presence: true
  validates :generation, :legendary, presence: true
end
