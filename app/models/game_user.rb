class GameUser < ApplicationRecord
	belongs_to :user, optional: true
	belongs_to :game, optional: true
end
