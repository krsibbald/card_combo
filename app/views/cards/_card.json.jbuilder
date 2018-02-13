json.extract! card, :id, :rails, :generate, :scaffold, :Card, :game_id, :name, :points, :reagent1, :reagent2, :notes, :image_loc, :icon, :start_hand_num, :stockroom_num, :created_at, :updated_at
json.url card_url(card, format: :json)
