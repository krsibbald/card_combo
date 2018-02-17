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

  def self.import_from_cordova(combos_string)
    #removes all white space, puts quotes before and after numbers
    json_combos = combos_string.squish.delete(' ').gsub(/(\d+)/, '"\\1"')
    combos_hash = JSON.parse json_combos

    combos_hash.keys.each do |k1|
      card1 = Card.find_by_game_id(k1)
      combos_hash[k1].keys.each do |k2|
        if k2 == '0'
          combo = Combo.create(outcome: true)
          CardSpot.create(combo: combo, card: card1, ord: 1)
        else
          card2 = Card.find_by_game_id(k2)
          combos_hash[k1][k2].keys.each do |k3|
            if k3 == '0'
              combo = Combo.create(outcome: true)
              CardSpot.create(combo: combo, card: card1, ord: 1)
              CardSpot.create(combo: combo, card: card2, ord: 2)
            else
              card3 = Card.find_by_game_id(k3)
              combos_hash[k1][k2][k3].keys.each do |k4|
                if k4 == '0'
                  combo = Combo.create(outcome: true)
                  CardSpot.create(combo: combo, card: card1, ord: 1)
                  CardSpot.create(combo: combo, card: card2, ord: 2)
                  CardSpot.create(combo: combo, card: card3, ord: 3)
                else
                  card4 = Card.find_by_game_id(k4)
                  combos_hash[k1][k2][k3][k4].keys.each do |k5|
                    if k5 == '0'
                      combo = Combo.create(outcome: true)
                      CardSpot.create(combo: combo, card: card1, ord: 1)
                      CardSpot.create(combo: combo, card: card2, ord: 2)
                      CardSpot.create(combo: combo, card: card3, ord: 3)
                      CardSpot.create(combo: combo, card: card4, ord: 4)
                    else
                      card5 = Card.find_by_game_id(k5)
                      combos_hash[k1][k2][k3][k4][k5].keys.each do |k6|
                        if k5 == '0'
                          combo = Combo.create(outcome: true)
                          CardSpot.create(combo: combo, card: card1, ord: 1)
                          CardSpot.create(combo: combo, card: card2, ord: 2)
                          CardSpot.create(combo: combo, card: card3, ord: 3)
                          CardSpot.create(combo: combo, card: card4, ord: 4)
                          CardSpot.create(combo: combo, card: card5, ord: 5)
                        else
                          puts "bad section of hash #{k1}:#{k2}:#{k3}:#{k4}:#{k5}"
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
