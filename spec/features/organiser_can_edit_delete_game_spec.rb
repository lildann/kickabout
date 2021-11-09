require 'rails_helper'

RSpec.feature "Organising a game", type: :feature do
  scenario "Can delete game if cancelled" do
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
    fill_in "Date and time", with: "2022-11-12 18:00:00"
    click_button "Add Game"
    click_link "Cancel game"
    expect(page).not_to have_content("TestDescription")
  end

  scenario "Can edit a game if necessary" do
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
    fill_in "Date and time", with: "2022-11-12 18:00:00"
    click_button "Add Game"
    click_link "Edit info"
    fill_in "Description:", with: "NewTestDescription"
    click_button "Edit Game"
    expect(page).to have_content("NewTestDescription")
  end
end