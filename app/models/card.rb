class Card < ApplicationRecord
  validates :name, :game_id, uniqueness: true
end
