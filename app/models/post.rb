class Post < ApplicationRecord
  belongs_to :user, optional: true
	belongs_to :game, optional: true
  has_one_attached :image
end
