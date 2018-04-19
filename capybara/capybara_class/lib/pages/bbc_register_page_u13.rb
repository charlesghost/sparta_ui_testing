require 'capybara/dsl'

class BbcRegisterUnder13
	include Capybara::DSL

	REGISTER_LINK = 'Register now'
	OVER_AGE_LINK = 'Under 13'
	PARENT_EMAIL_ID = 'email-input'
	PARENT_EMAIL_SENT = 'text heading'
	SEND_EMAIL_ID = 'submit-button'

	def register_account
        click_link(REGISTER_LINK)
	end

	def click_under_age
        click_link(OVER_AGE_LINK)
	end

	def register_parent_email(email)
        fill_in(PARENT_EMAIL_ID, with: email)
	end

	def click_send_email
        click_button(SEND_EMAIL_ID)
	end

	def confirmation_email_text
        within(:css, 'div.page__content') do 
        	find('p').text
        end
	end

end