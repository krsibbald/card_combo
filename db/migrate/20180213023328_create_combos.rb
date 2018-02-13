class CreateCombos < ActiveRecord::Migration[5.1]
  def change
    create_table :combos do |t|
      t.boolean :outcome
      t.integer :card_spots_count, default: 0, null: false

      t.timestamps
    end
  end
end
