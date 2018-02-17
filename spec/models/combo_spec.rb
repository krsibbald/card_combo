require 'rails_helper'

RSpec.describe Combo, type: :model do
  let!(:card1) { create :card, game_id: 1 }
  let!(:card2) { create :card, game_id: 2 }
  let!(:card3) { create :card, game_id: 3 }

  describe "#export_as_hash" do

    let!(:combo1) { create :combo, outcome: true }
    let!(:cs1) { create :card_spot, combo: combo1, card: card1, ord: 1 } 
    let!(:cs2) { create :card_spot, combo: combo1, card: card2, ord: 2 }
    let!(:cs3) { create :card_spot, combo: combo1, card: card3, ord: 3 }


    it "one combo" do
      expect(Combo.export_as_hash).to eq ({1=>{2=>{3=>{0=>true}}}})
    end
    it "two combos" do
      combo2 = create :combo, outcome: true
      create :card_spot, combo: combo2, card: card1, ord: 1 
      create :card_spot, combo: combo2, card: card2, ord: 2

      expect(Combo.export_as_hash).to eq ({1=>{2=>{3=>{0=>true},0=>true}}})
    end
    it "different starting card" do
      combo3 = create :combo, outcome: true
      create :card_spot, combo: combo3, card: card3, ord: 1 
      create :card_spot, combo: combo3, card: card2, ord: 2

      expect(Combo.export_as_hash).to eq ({1=>{2=>{3=>{0=>true}}},3=>{2=>{0=>true}}})
    end
    
  end

  describe "#import_from_cordova" do
    it "one combo" do
      #0 is last item in hand
      combos_string = "{
        1: { 3: { 0: true } }
      }"
      expect(CardSpot.count).to eq 0
      expect(Combo.count).to eq 0 
      Combo.import_from_cordova(combos_string)
      expect(Combo.count).to eq 1
      expect(CardSpot.count).to eq 2
      first_combo = Combo.first


      expect(CardSpot.where(combo: first_combo, ord: 1).first.card).to eq card1
      expect(CardSpot.where(combo: first_combo, ord: 2).first.card).to eq card3
    end
  end
end
