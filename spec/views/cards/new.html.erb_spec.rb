require 'rails_helper'

RSpec.describe "cards/new", type: :view do
  before(:each) do
    assign(:card, Card.new(
      :rails => "MyString",
      :generate => "MyString",
      :scaffold => "MyString",
      :Card => "MyString",
      :game_id => 1,
      :name => "MyString",
      :points => 1,
      :reagent1 => "MyString",
      :reagent2 => "MyString",
      :notes => "MyString",
      :image_loc => "MyString",
      :icon => "MyString",
      :start_hand_num => 1,
      :stockroom_num => 1
    ))
  end

  it "renders new card form" do
    render

    assert_select "form[action=?][method=?]", cards_path, "post" do

      assert_select "input[name=?]", "card[rails]"

      assert_select "input[name=?]", "card[generate]"

      assert_select "input[name=?]", "card[scaffold]"

      assert_select "input[name=?]", "card[Card]"

      assert_select "input[name=?]", "card[game_id]"

      assert_select "input[name=?]", "card[name]"

      assert_select "input[name=?]", "card[points]"

      assert_select "input[name=?]", "card[reagent1]"

      assert_select "input[name=?]", "card[reagent2]"

      assert_select "input[name=?]", "card[notes]"

      assert_select "input[name=?]", "card[image_loc]"

      assert_select "input[name=?]", "card[icon]"

      assert_select "input[name=?]", "card[start_hand_num]"

      assert_select "input[name=?]", "card[stockroom_num]"
    end
  end
end
