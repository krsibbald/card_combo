FactoryBot.define do
  factory :card do
    game_id 1
    sequence(:name) { |n| "Hydrogen#{n}" }
    points 1
    reagent1 "MyString"
    reagent2 "MyString"
    notes nil
    image_loc "MyString"
    icon "MyString"
    start_hand_num 0
    stockroom_num 3
  end
end
