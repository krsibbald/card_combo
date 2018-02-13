require 'rails_helper'

RSpec.describe "cards/show", type: :view do
  before(:each) do
    @card = assign(:card, Card.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Rails/)
    expect(rendered).to match(/Generate/)
    expect(rendered).to match(/Scaffold/)
    expect(rendered).to match(/Card/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Reagent1/)
    expect(rendered).to match(/Reagent2/)
    expect(rendered).to match(/Notes/)
    expect(rendered).to match(/Image Loc/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
