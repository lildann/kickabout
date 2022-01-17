require 'rails_helper'
require 'feature_helpers'

RSpec.feature "User can create a game", type: :feature do
  scenario "Adding a new game" do
		sign_up
    add_game
    expect(page.current_path).to eq "/games"
    expect(page).to have_content "TestDescription"
  end
end



