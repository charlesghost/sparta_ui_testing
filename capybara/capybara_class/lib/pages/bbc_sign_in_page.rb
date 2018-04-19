require 'capybara/dsl'

class BbcSignInPage
	include Capybara::DSL 

	USERNAME_ID = 'user-identifier-input'
    
	PASSWORD_ID = 'password-input'

	SUBMIT_ID = 'submit-button'

	INCORRECT_PASSWORD_TEXT_ID = 'form-message-username'

	DETAILS_ERROR = 'form-message-general'

	MISSING_USERNAME = 'form-message-username'

	MISSING_PASSWORD = 'form-message-password'

	SHORT_USERNAME = 'form-message-username'

	SHORT_PASSWORD = 'form-message-password'

	def fill_in_username(username) 
		fill_in(USERNAME_ID, with: username)

	end

	def fill_in_password(password)
        fill_in(PASSWORD_ID, with: password)
	end

	def click_sign_in_button
        click_button(SUBMIT_ID)
	end

	def incorrect_password_text
        find(:id, INCORRECT_PASSWORD_TEXT_ID).text
	end

	def missing_details_text
        find(:id, DETAILS_ERROR).text
	end

	def missing_username_text
        find(:id, MISSING_USERNAME).text
	end

	def missing_password_text
        find(:id, MISSING_PASSWORD).text
	end

	def short_username_text
        find(:id, SHORT_USERNAME).text
	end

	def short_password_text
        find(:id, SHORT_PASSWORD).text
	end
end