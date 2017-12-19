# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: '587',
  authentication: :plain,
  enable_starttls_auto: true,
  user_name: 'abdelrahmankhadra@gmail.com',
  password: 'A@123456789',
  domain: 'heroku.com'
}
