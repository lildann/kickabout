class Game < ApplicationRecord
  validates :location, :player_count, :datetime, presence: true
  belongs_to :user, optional: true
  has_many :game_users
  has_many :posts
  has_many :users, :through => :game_users

  acts_as_mappable :default_units => :miles,
    :default_formula => :sphere,
    :distance_field_name => :distance,
    :lat_column_name => :latitude,
    :lng_column_name => :longitude
  end

