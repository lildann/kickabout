class Game < ApplicationRecord
  validates :location, :player_count, :datetime, presence: true
  belongs_to :user, optional: true
  has_many :game_users
  has_many :users, :through => :game_users
end
