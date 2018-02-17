class CardSpot < ApplicationRecord
  belongs_to :combo, counter_cache: true
  belongs_to :card

  validates :combo, :card, presence: true
  validates :ord, presence: true, uniqueness: { scope: :combo,  message: "is already taken for this combo" }
  validate :must_be_sequential

  private

  def must_be_sequential
    if ord > combo.card_spots.count + 1
      errors[:ord] << " is invalid was #{ord} needs to be greater than #{combo.card_spots.count + 1}"
    end
  end
end
