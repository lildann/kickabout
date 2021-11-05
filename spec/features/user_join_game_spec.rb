require 'rails_helper'

RSpec.feature "User can join a game", type: :feature do
  scenario "Can join a new game only once" do
		visit "/users/sign_up"
    fill_in "user_email", with: "test@email.com"
    fill_in "user_password", with: "password123"
    fill_in "user_password_confirmation", with: "password123"
    click_button 'Sign up'
    visit "/games"
    click_link "Add a game"
    fill_in "Location:", with: "TestLocation"
    fill_in "Description:", with: "TestDescription"
    fill_in "Number of players:", with: "10"
    fill_in "Date and time:", with: "01/01/2025, 12:00"
    click_button "Add game"
    click_button "Join game"
    click_button "Join game"
    expect(page).to have_content "PLAYERS: 1 / 10"
  end
end