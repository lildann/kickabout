class AddForeignKeysToGamePlayers < ActiveRecord::Migration[6.1]
  def change
    add_reference :game_players, :games, null: false, foreign_key: true
    add_reference :game_players, :users, null: false, foreign_key: true
  end
end
