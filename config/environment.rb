# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Equipeimmobiliere::Application.initialize!

Equipeimmobiliere::Application.configure do
config.action_mailer.raise_delivery_errors = true

# Mailer delivery method
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    domain:               "domain.of.sender.net",
    authentication:       "plain",
    user_name:            "benowa.desu",
    password:             "Brussel3",
    enable_starttls_auto: true
  }
end