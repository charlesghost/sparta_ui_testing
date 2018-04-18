require 'capybara/dsl'

class BbcHomepage

	HOMEPAGE_URL = 'https://bbc.co.uk'
	SIGN_IN_LINK_ID = '#idcta-link'

	def initialize
		Capybara.register_driver :chrome do |app|
			Capybara::Selenium::Driver.new(app, :browser => :chrome)
		end 

		@driver = Capybara::Session.new(:chrome)
	end 

	def visit_home_page
		@driver.visit(HOMEPAGE_URL)
	end

	def sign_in_link
		@driver.find(SIGN_IN_LINK_ID)
	end

	def click_sign_in_link
		@driver.find(SIGN_IN_LINK_ID).click
		sleep 1
	end

end 

test1 = BbcHomepage.new 

test1.visit_home_page
test1.sign_in_link
test1.click_sign_in_link