class PostsController < ApplicationController

	def new
		puts "Hello ALL!"
		@post = Post.new
	end

	def show

	end

	def create
		puts "Hello YOU!"
    @post = Post.new(posts_params)
    @post.save
		puts "Hello ME!"
		redirect_back fallback_location: game_users_profile_path
	end

  private

  def posts_params
		puts "This is what I've got: #{params[:post]}"
    params.permit(:games_id, :user_id, :post_text, :image)
  end

end

