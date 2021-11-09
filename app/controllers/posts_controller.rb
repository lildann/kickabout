class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def show

	end

	def create
    @post = Post.new(posts_params)
    @post.save
		redirect_back fallback_location: game_users_profile_path
	end

  private

  def posts_params
    params.permit(:games_id, :user_id, :post_text, :image)
  end
end
