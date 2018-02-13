require 'rails_helper'

RSpec.describe "card_spots/show", type: :view do
  before(:each) do
    @card_spot = assign(:card_spot, CardSpot.create!(
      :combo => nil,
      :card => nil,
      :ord => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
