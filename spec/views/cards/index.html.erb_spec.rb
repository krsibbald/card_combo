require 'rails_helper'

RSpec.describe "cards/index", type: :view do
  before(:each) do
    assign(:cards, [
      Card.create!(
        :rails => "Rails",
        :generate => "Generate",
        :scaffold => "Scaffold",
        :Card => "Card",
        :game_id => 2,
        :name => "Name",
        :points => 3,
        :reagent1 => "Reagent1",
        :reagent2 => "Reagent2",
        :notes => "Notes",
        :image_loc => "Image Loc",
        :icon => "Icon",
        :start_hand_num => 4,
        :stockroom_num => 5
      ),
      Card.create!(
        :rails => "Rails",
        :generate => "Generate",
        :scaffold => "Scaffold",
        :Card => "Card",
        :game_id => 2,
        :name => "Name",
        :points => 3,
        :reagent1 => "Reagent1",
        :reagent2 => "Reagent2",
        :notes => "Notes",
        :image_loc => "Image Loc",
        :icon => "Icon",
        :start_hand_num => 4,
        :stockroom_num => 5
      )
    ])
  end

  it "renders a list of cards" do
    render
    assert_select "tr>td", :text => "Rails".to_s, :count => 2
    assert_select "tr>td", :text => "Generate".to_s, :count => 2
    assert_select "tr>td", :text => "Scaffold".to_s, :count => 2
    assert_select "tr>td", :text => "Card".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Reagent1".to_s, :count => 2
    assert_select "tr>td", :text => "Reagent2".to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
    assert_select "tr>td", :text => "Image Loc".to_s, :count => 2
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
