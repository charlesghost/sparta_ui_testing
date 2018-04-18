require 'capybara'

# Register chrome driver with capybara
Capybara.register_driver :chrome do |app|
	Capybara::Selenium::Driver.new(app, :browser => :chrome)
end 

# Create a new session
session = Capybara::Session.new(:chrome)

# Use the visit method to navigate to page
session.visit('http://toolsqa.com/automation-practice-form')

# Simple form entries
session.fill_in('firstname', with: 'Leeroy')
session.fill_in('lastname', with: 'Jenkins')

# Radio buttons
session.choose('sex-0')
session.choose('exp-6')

session.fill_in('datepicker', with: '17/04/2018')

session.check('profession-1')

session.click_link('Test File to Download')

session.check('tool-1')

session.select('Africa', :from => 'continents')

session.select('Switch Commands', :from => 'selenium_commands')

session.click_button('submit')

sleep 3