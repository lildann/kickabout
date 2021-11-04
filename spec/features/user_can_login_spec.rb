require 'rails_helper'
require 'feature_helpers'

RSpec.feature "User can login", type: :feature do
  scenario "Can login to an account" do
    sign_up
		click_on 'Sign out'
    login
    expect(page.current_path).to eq '/'
  end
end