class Combo < ApplicationRecord
  has_many :card_spots, dependent: :destroy
  has_many :cards, through: :card_spots

  def self.export_as_hash
        ans = {}
    Combo.all.each do |combo|
      card_ids = combo.card_spots.order(:ord).map(&:card).map(&:game_id)
      len = card_ids.length

      if len > 0
        if ans[card_ids[0]].nil?
          ans[card_ids[0]] = {}
        end
      end
      if len > 1
        if ans[card_ids[0]][card_ids[1]].nil?
          ans[card_ids[0]][card_ids[1]] = {}
        end
      end
      if len > 2
        if ans[card_ids[0]][card_ids[1]][card_ids[2]].nil?
          ans[card_ids[0]][card_ids[1]][card_ids[2]] = {}
        end
      end
      if len > 3
        if ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]].nil?
          ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]] = {}
        end
      end
      if len > 4
        if ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][card_ids[4]].nil?
          ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][card_ids[4]] = {}
        end
      end

      case len 
      when 0 
        #nothing
      when 1
        ans[card_ids[0]][0] = true
      when 2
        ans[card_ids[0]][card_ids[1]][0] = true
      when 3
        ans[card_ids[0]][card_ids[1]][card_ids[2]][0] = true
      when 4
        ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][0] = true
      when 5
        ans[card_ids[0]][card_ids[1]][card_ids[2]][card_ids[3]][card_ids[4]][0] = true
      end
    end
    ans
  end
end
