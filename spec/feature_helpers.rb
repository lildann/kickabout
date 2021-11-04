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

