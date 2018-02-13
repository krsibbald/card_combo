require 'rails_helper'

RSpec.describe "card_spots/index", type: :view do
  before(:each) do
    assign(:card_spots, [
      CardSpot.create!(
        :combo => nil,
        :card => nil,
        :ord => 2
      ),
      CardSpot.create!(
        :combo => nil,
        :card => nil,
        :ord => 2
      )
    ])
  end

  it "renders a list of card_spots" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
