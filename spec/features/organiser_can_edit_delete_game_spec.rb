require 'rails_helper'

RSpec.feature "Organising a game", type: :feature do
  scenario "Can delete game if cancelled" do
    sign_up
    add_game
    click_link "Cancel game"
    expect(page).not_to have_content("TestDescription")
  end

  scenario "Can edit a game if necessary" do
    sign_up
    add_game
    click_link "Edit info"
    fill_in "Description:", with: "NewTestDescription"
    click_button "Edit Game"
    expect(page).to have_content("NewTestDescription")
  end
end