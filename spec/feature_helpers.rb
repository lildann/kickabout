require 'rails_helper'

def sign_up
  visit "/users/sign_up"
  fill_in "user_email", with: "test@email.com"
  fill_in "user_password", with: "password123"
  fill_in "user_password_confirmation", with: "password123"
  click_button "Sign up"
end

def login
  visit "/users/sign_in"
  fill_in "user_email", with: "test@email.com"
  fill_in "user_password", with: "password123"
  click_button "Log in"
end

def add_game
  click_link "Add a game"
  fill_in "Location:", with: "TestLocation"
  fill_in "Description:", with: "TestDescription"
  fill_in "Number of players:", with: "10"
  fill_in "Date and time", with: "2022-11-12 18:00:00"
  click_button "Add Game"
end

