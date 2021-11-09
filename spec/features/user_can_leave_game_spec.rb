require 'rails_helper'
require 'feature_helpers'

RSpec.feature "User can leave a game", type: :feature do
  scenario "Can leave a game if necessary" do
		sign_up
    add_game
    click_button "Join Game"
    click_button "Leave Game"
    expect(page).to have_selector(:link_or_button, "Join Game")
    expect(page).to have_content "PLAYERS: 0 / 10"
  end
end