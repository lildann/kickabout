require 'rails_helper'
require 'feature_helpers'

RSpec.feature "User can sign up", type: :feature do
  scenario "Can sign up for an account" do
		sign_up
    expect(page.current_path).to eq '/games'
  end
end