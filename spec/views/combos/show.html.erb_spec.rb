require 'rails_helper'

RSpec.describe "combos/show", type: :view do
  before(:each) do
    @combo = assign(:combo, Combo.create!(
      :outcome => false,
      :card_spots_count => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
  end
end
