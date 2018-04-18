require 'selenium-webdriver'
require_relative '../selenium_demoqa_reg'
require_relative '../lib/gen/gendata'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end 