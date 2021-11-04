require 'rails_helper'

RSpec.feature "User can sign up", type: :feature do
  scenario "Can sign up for an account" do
		visit "/users/sign_up"
    fill_in "user_email", with: "test@email.com"
    fill_in "user_password", with: "password123"
    fill_in "user_password_confirmation", with: "password123"
    click_button 'Sign up'
    expect(page.current_path).to eq '/'
  end
end