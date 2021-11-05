class HomeController < ApplicationController
  def index
    # if a user isn't logged in they cant access the games. redirect_to games_path
  end
end
