class GameUsersController < ApplicationController

	def index
		@game_users = GameUser.all
	end

	def new
		@game_user = GameUser.new
	end

	def profile

	end

	def show

	end

	def create
		GameUser.new(game_user_params).save
		redirect_back fallback_location: games_url
	end

	def destroy
		@scheduled_games = GameUser.where(games_id: params["game_user"]["games_id"], 
			users_id: current_user.id)
			@scheduled_games.each { |game| game.destroy }
			redirect_back fallback_location: games_url
	end

  private

  def game_user_params
    params.require(:game_user).permit(:games_id, :users_id)
  end

end

