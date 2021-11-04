class Game < ApplicationRecord
  belongs_to :user, optional: true
  has_many :game_users
  has_many :users, :through => :game_users
end
