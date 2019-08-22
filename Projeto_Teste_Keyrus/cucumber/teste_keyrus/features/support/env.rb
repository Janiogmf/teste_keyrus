require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'

Capybara.configure do |config|
   config.default_max_wait_time = 30
   config.default_driver = :selenium
end