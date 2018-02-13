require 'rails_helper'

RSpec.describe "card_spots/edit", type: :view do
  before(:each) do
    @card_spot = assign(:card_spot, CardSpot.create!(
      :combo => nil,
      :card => nil,
      :ord => 1
    ))
  end

  it "renders the edit card_spot form" do
    render

    assert_select "form[action=?][method=?]", card_spot_path(@card_spot), "post" do

      assert_select "input[name=?]", "card_spot[combo_id]"

      assert_select "input[name=?]", "card_spot[card_id]"

      assert_select "input[name=?]", "card_spot[ord]"
    end
  end
end
