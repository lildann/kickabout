require 'rails_helper'
require 'feature_helpers'

RSpec.feature "User can join a game", type: :feature do
  scenario "Can join a new game" do
		sign_up
    add_game
    click_button "Join Game"
    expect(page).to have_content "PLAYERS: 1 / 10"
  end

  scenario "Can join a new game only once" do
		sign_up
    add_game
    click_button "Join Game"
    expect(page).not_to have_selector(:link_or_button, "Join Game")
    expect(page).to have_selector(:link_or_button, "Leave Game")
  end
end