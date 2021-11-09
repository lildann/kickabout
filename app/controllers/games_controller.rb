class GamesController < ApplicationController
  before_action :find_game, only: [:show, :edit, :update, :destroy] 

  def index
    @games = Game.all.order("datetime")
    @game_user = GameUser.new
  end

  def show
  end

  def new
    @game = Game.new
  end

  def edit 
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

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to games_path
    else
      render :edit 
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path 
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
    params.require(:game).permit(:location, :description, :player_count, :datetime, :user_id, :latitude, :longitude)
  end
end


  
