class GamesController < ApplicationController
  
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save 
      redirect_to @game
    else
      render :new
    end

  end

  private

  def game_params
    params.require(:game).permit(:location, :description, :player_count, :datetime)
  end
end
