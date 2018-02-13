require 'rails_helper'

RSpec.describe "card_spots/new", type: :view do
  before(:each) do
    assign(:card_spot, CardSpot.new(
      :combo => nil,
      :card => nil,
      :ord => 1
    ))
  end

  it "renders new card_spot form" do
    render

    assert_select "form[action=?][method=?]", card_spots_path, "post" do

      assert_select "input[name=?]", "card_spot[combo_id]"

      assert_select "input[name=?]", "card_spot[card_id]"

      assert_select "input[name=?]", "card_spot[ord]"
    end
  end
end
