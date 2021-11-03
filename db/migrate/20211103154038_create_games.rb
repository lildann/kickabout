class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :location
      t.text :description
      t.integer :player_count
      t.datetime :datetime

      t.timestamps
    end
  end
end
