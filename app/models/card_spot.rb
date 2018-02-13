class CardSpot < ApplicationRecord
  belongs_to :combo, counter_cache: true
  belongs_to :card

  validates :combo, :card, :ord, presence: true
end
