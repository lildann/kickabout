require 'rails_helper'

RSpec.feature "User can sign up", type: :feature do
  scenario "Can sign up for an account" do
		sign_up
    expect(page.current_path).to eq '/'
  end
end