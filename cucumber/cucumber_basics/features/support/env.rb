require 'capybara/cucumber'
require 'capybara/dsl'
require_relative '../lib/bbc_site'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.default_max_wait_time= 10 #wait time for asynchronus processes to finsh
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic
  config.default_driver = :chrome # ensures chrome is the default driver
end

World(BbcSite)