require 'rails_helper'
require 'feature_helpers'

RSpec.feature "User can sign out", type: :feature do
  scenario "Can sign out of an account" do
		sign_up
    click_on "Sign out"
    expect(page.current_path).to eq '/'
  end
end