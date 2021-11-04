class GameUsersController < ApplicationController

	def index
		@game_users = GameUser.all
	end

	def new
		@game_user = GameUser.new
	end

	def create
		@game_user = GameUser.new(game_user_params)
		if @game_user.save
			redirect_to games_path
		else 
			render :new
		end
	end

  private
  
  def game_user_params
    params.require(:game_user).permit(:games_id, :users_id)
  end
end

