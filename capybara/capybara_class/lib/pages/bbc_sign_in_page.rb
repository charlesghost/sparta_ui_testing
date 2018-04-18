require 'capybara/dsl'

class BbcSignInPage
	include Capybara::DSL 

	USERNAME_ID = 'user-identifier-input'
    
	PASSWORD_ID = 'password-input'

	SUBMIT_ID = 'submit-button'

	INCORRECT_PASSWORD_TEXT_ID = 'form-message-username'

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

end