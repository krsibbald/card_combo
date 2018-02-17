require 'rails_helper'

RSpec.describe Combo, type: :model do
  describe "#export_as_hash" do
    let!(:card1) { create :card, game_id: 1 }
    let!(:card2) { create :card, game_id: 2 }
    let!(:card3) { create :card, game_id: 3 }
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
end
