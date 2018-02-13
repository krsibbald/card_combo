class CreateCardSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :card_spots do |t|
      t.references :combo, foreign_key: true
      t.references :card, foreign_key: true
      t.integer :ord

      t.timestamps
    end
  end
end
