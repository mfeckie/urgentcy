# Definitely change this when you deploy to production. Ours is replaced by jenkins.
# This token is used to secure sessions, we don't mind shipping with one to ease test and debug,
#  however, the stock one should never be used in production, people will be able to crack
#  session cookies.
#
# Generate a new secret with "rake secret".  Copy the output of that command and paste it
# in your secret_token.rb as the value of Urgentcy::Application.config.secret_key_base:
#
# Urgentcy::Application.config.secret_token = "SET_SECRET_HERE"

# delete all lines below in production
if Rails.env.test? || Rails.env.development? || Rails.env == "profile"
  Urgentcy::Application.config.secret_key_base = '2e5f48e198e041ea5cfd34040d8cf11591aab44c2e7bc7eb61d5f09dab409fb71d13d10b6c933338e6a0e2f3946fb44f4f040696e97e4673b371c1ca47396158'
else
  raise "You must set a secret token in ENV['SECRET_TOKEN'] or in config/initializers/secret_token.rb" if ENV['SECRET_TOKEN'].blank?
  Urgentcy::Application.config.secret_key_base = ENV['SECRET_TOKEN']
end