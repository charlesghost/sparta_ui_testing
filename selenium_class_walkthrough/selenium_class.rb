require 'selenium-webdriver'

class SeleniumQAToolsForm

	PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
	FIRST_NAME_FIELD_NAME = 'firstname'
	LAST_NAME_FIELD_NAME = 'lastname'
	CLICK_MALE = 'sex-0'
	CLICK_OPTION = 'exp-6'
	DATE_FIELD = 'datepicker'
	CLICK_PROFESSION = 'profession-1'
	CHOOSE_FILE = 'photo'
	CLICK_LINK = 'Test File to Download'
	CLICK_TOOL = 'tool-1'
	CONTINENTS_ID = 'continents'
	COMMANDS_ID = 'selenium_commands'
	SUBMIT_ID = 'submit'
	
	def initialize
		@chrome_driver = Selenium::WebDriver.for :chrome 
	end 

	def visit_practice_form
		@chrome_driver.get(PRACTICE_FORM_URL)
	end 

	def input_firstname_field(text)
		@chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
	end

	def input_lastname_field(text)
		@chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
	end

	def click_sex_option
		@chrome_driver.find_element(:id, CLICK_MALE).click
	end

	def click_exp_option
        @chrome_driver.find_element(:id, CLICK_OPTION).click
	end

	def input_date(text)
		@chrome_driver.find_element(:id, DATE_FIELD).send_keys(text)
	end

	def click_profession_option
        @chrome_driver.find_element(:id, CLICK_PROFESSION).click
	end

	def click_link
        @chrome_driver.find_element(:link_text, CLICK_LINK).click
	end

	def click_tool
        @chrome_driver.find_element(:id, CLICK_TOOL).click
	end
    
    def click_continents
        continent_select = @chrome_driver.find_element(:id, CONTINENTS_ID)
        options = continent_select.find_elements(:tag_name => 'option')
        options[2].click
    end

    def click_commands
        commands_select = @chrome_driver.find_element(:id, COMMANDS_ID)
        commands = commands_select.find_elements(:tag_name => 'option')
        commands[3].click
    end

    def click_submit
    	@chrome_driver.find_element(:id, SUBMIT_ID).click
    end

end

form = SeleniumQAToolsForm.new

form.visit_practice_form
form.input_firstname_field("Leeroy")
form.input_lastname_field("Jenkins")
form.click_sex_option
form.click_exp_option
form.input_date("17/4/2018")
form.click_profession_option
form.click_link 
form.click_tool 
form.click_continents
form.click_commands
form.click_submit

