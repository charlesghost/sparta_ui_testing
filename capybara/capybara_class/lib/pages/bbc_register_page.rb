require 'capybara/dsl'

class BbcRegisterPage
	include Capybara::DSL 

	REGISTER_LINK = 'Register now'
	OVER_AGE_LINK = '13 or over'
	EMAIL_UPDATES = '//*[@id="marketingOptIn"]/div[1]/div[1]/label/div'
	DAY_INPUT_ID = 'day-input'
	MONTH_INPUT_ID = 'month-input'
	YEAR_INPUT_ID = 'year-input'
	CONTINUE_ID = 'submit-button'
	REGISTER_EMAIL_ID = 'user-identifier-input'
	REGISTER_PASSWORD_ID = 'password-input'
	REGISTER_POSTCODE_ID = 'postcode-input'
	GENDER_ID = 'gender-input'
	REGISTER_CONFIRM_ID = 'submit-button'

	def register_account
        click_link(REGISTER_LINK)
	end 

	def click_over_age
        click_link(OVER_AGE_LINK)
	end

	def fill_in_day(day)
        fill_in(DAY_INPUT_ID, with: day)
	end

    def fill_in_month(month)
        fill_in(MONTH_INPUT_ID, with: month)
    end

    def fill_in_year(year)
        fill_in(YEAR_INPUT_ID, with: year)
    end

    def click_continue
        click_button(CONTINUE_ID)
    end

    def register_email(email)
        fill_in(REGISTER_EMAIL_ID, with: email)
    end

    def register_password(password)
        fill_in(REGISTER_PASSWORD_ID, with: password)
    end

    def register_postcode(postcode)
        fill_in(REGISTER_POSTCODE_ID, with: postcode)
    end
    
    def pick_gender
        select('Male', :from => GENDER_ID)
    end

    def click_email_updates
        find(:xpath, EMAIL_UPDATES).click
    end

    def click_register
        click_button(REGISTER_CONFIRM_ID)
        sleep 3
    end

    def register_confirmation_text
        within(:css, 'div.page__content') do 
        	find('span').text
        end
    end

end