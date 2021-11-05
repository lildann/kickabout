class GamesController < ApplicationController
  before_action :find_game, only: [:show] 

  def index
    @games = Game.all
    @game_user = GameUser.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
		@game.user_id = current_user.id
    if @game.save
      redirect_to games_path
    else 
      render :new
    end
  end

  def show
  end

	def find_players
		@current_players = GameUser.where(games_id:
			params["game_user"]["games_id"])
	end

  private

  def find_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:location, :description, :player_count, :datetime, :user_id)
  end
end


  
