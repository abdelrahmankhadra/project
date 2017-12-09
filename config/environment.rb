# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  port: '587',
  authentication:  :plain,
  enable_starttls_auto: true,
  user_name: 'aboodkhadra2017@gmail.com',
  password: 'P@ss123.321W0rd',
  domain: 'heroku.com'
}
