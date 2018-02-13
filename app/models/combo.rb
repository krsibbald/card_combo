class Combo < ApplicationRecord
  has_many :card_spots
  has_many :cards, through: :card_spots
end
