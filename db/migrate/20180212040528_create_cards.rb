class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :game_id
      t.string :name
      t.integer :points
      t.string :reagent1
      t.string :reagent2
      t.string :notes
      t.string :image_loc
      t.string :icon
      t.integer :start_hand_num
      t.integer :stockroom_num

      t.timestamps
    end
  end
end
