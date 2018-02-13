require 'rails_helper'

RSpec.describe "combos/new", type: :view do
  before(:each) do
    assign(:combo, Combo.new(
      :outcome => false,
      :card_spots_count => 1
    ))
  end

  it "renders new combo form" do
    render

    assert_select "form[action=?][method=?]", combos_path, "post" do

      assert_select "input[name=?]", "combo[outcome]"

      assert_select "input[name=?]", "combo[card_spots_count]"
    end
  end
end
