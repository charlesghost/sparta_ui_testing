require 'spec_helper'

describe 'Correct details gives you access to site' do 

	context 'It should respond with the correct confirmation when correct details are input' do 


		before(:all) do 
			@bbc_site = BbcSite.new
		end

		it 'should show a registation confirmation if the user is over 13' do 
            @bbc_site.bbc_homepage.visit_home_page
			@bbc_site.bbc_homepage.click_sign_in_link
			@bbc_site.bbc_register_page.register_account
			@bbc_site.bbc_register_page.click_over_age
			@bbc_site.bbc_register_page.fill_in_day('12')
			@bbc_site.bbc_register_page.fill_in_month('10')
			@bbc_site.bbc_register_page.fill_in_year('1992')
			@bbc_site.bbc_register_page.click_continue
			@bbc_site.bbc_register_page.register_email('mahsgsdj@mail.com')
			@bbc_site.bbc_register_page.register_password('magajuice123')
			@bbc_site.bbc_register_page.register_postcode('e6 5yp')
			@bbc_site.bbc_register_page.pick_gender
			@bbc_site.bbc_register_page.click_email_updates
			@bbc_site.bbc_register_page.click_register
			expect(@bbc_site.bbc_register_page.register_confirmation_text).to eq 'Thanks. You\'re now signed in.'
		end
	end


end 