require 'rails_helper'

RSpec.describe "combos/edit", type: :view do
  before(:each) do
    @combo = assign(:combo, Combo.create!(
      :outcome => false,
      :card_spots_count => 1
    ))
  end

  it "renders the edit combo form" do
    render

    assert_select "form[action=?][method=?]", combo_path(@combo), "post" do

      assert_select "input[name=?]", "combo[outcome]"

      assert_select "input[name=?]", "combo[card_spots_count]"
    end
  end
end
