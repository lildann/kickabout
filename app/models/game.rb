class Game < ApplicationRecord
  belongs_to :user, optional: true
  # has_many :time, :description, :date, :player_count, :location
end
