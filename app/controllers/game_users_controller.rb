class GameUsersController < ApplicationController

	def index
		@game_users = GameUser.all
	end

	def new
		@game_user = GameUser.new
	end

	def create
		GameUser.new(game_user_params).save if !already_playing?
		redirect_back fallback_location: games_url
	end

  private
  
  def game_user_params
    params.require(:game_user).permit(:games_id, :users_id)
  end

	def already_playing?
		GameUser.where(users_id: current_user.id, games_id:
			params["game_user"]["games_id"]).exists?
	end
end

