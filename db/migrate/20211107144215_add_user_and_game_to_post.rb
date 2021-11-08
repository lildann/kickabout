class AddUserAndGameToPost < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :user, null: false, foreign_key: true
    add_reference :posts, :games, null: false, foreign_key: true
  end
end
