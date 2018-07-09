# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_url_options = { :host => 'marvelous-isle-royale-25652.herokuapp.com' }
config.action_mailer.raise_delivery_errors = true
config.action_mailer.perform_deliveries = true

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['MAILGUN_SMTP_SERVER'],
  :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
  :password       => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain         => 'marvelous-isle-royale-25652.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp