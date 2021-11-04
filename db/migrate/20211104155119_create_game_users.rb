class CreateGameUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :game_users do |t|
      t.integer :games_id
      t.integer :users_id
      t.timestamps
    end
  end
end
