# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Photoportfolio::Application.initialize!

# Keys for recaptcha
ENV['RECAPTCHA_PUBLIC_KEY']  = '6LeE2OUSAAAAAEBcHEjLrkWyIvKjVEEitVvF2nwZ'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LeE2OUSAAAAACW6zsoS16FHQrbGfWAIauDohXrQ'
