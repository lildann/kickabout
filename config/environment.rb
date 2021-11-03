# Load the Rails application.
require_relative "application"
RAILS_ENV=production bundle exec rake db:create db:schema:load
# Initialize the Rails application.
Rails.application.initialize!
