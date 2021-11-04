require 'rails_helper'

RSpec.feature "User can create a game", type: :feature do
  scenario "Can create a new game" do
		visit "/users/sign_up"
    fill_in "user_email", with: "test@email.com"
    fill_in "user_password", with: "password123"
    fill_in "user_password_confirmation", with: "password123"
    click_button 'Sign up'
    visit "/games"
    click_button "Add a game"
    fill_in "location", with: "TestLocation"
    fill_in "description", with: "TestDescription"
    fill_in "player_count", with: "10"
    fill_in "time", with: "19:00"
    fill_in "date", with: "01/01/2025"
    click_button "Add game"
    expect(page.current_path).to eq "/games"
    expect(page).to have_content "TestLocation"
  end
end