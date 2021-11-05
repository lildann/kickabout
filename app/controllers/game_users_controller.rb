class GameUsersController < ApplicationController

	def index
		@game_users = GameUser.all
	end

	def new
		@game_user = GameUser.new
	end

	def create
		GameUser.new(game_user_params).save
		redirect_back fallback_location: games_url
	end

	def leave
		puts "Leaving Now!"
		delete from GameUser.where(games_id: params[games_user][games_id], 
			users_id: current_user.id)
	end

  private

  def game_user_params
    params.require(:game_user).permit(:games_id, :users_id)
  end

end

