require 'rails_helper'

RSpec.describe "combos/index", type: :view do
  before(:each) do
    assign(:combos, [
      Combo.create!(
        :outcome => false,
        :card_spots_count => 2
      ),
      Combo.create!(
        :outcome => false,
        :card_spots_count => 2
      )
    ])
  end

  it "renders a list of combos" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
