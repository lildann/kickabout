class AddLatLongToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :latitude, :decimal, :precision => 10, :scale => 6
    add_column :games, :longitude, :decimal, :precision => 10, :scale => 6
  end
end
