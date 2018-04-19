require 'spec_helper'

describe 'Correct details gives you access to site' do

	context 'It should respond with the correct confirmation when correct information' do

		it 'show a registration confirmation if the user is under 13' do
			@bbc_site = BbcSite.new
            @bbc_site.bbc_homepage.visit_home_page
			@bbc_site.bbc_homepage.click_sign_in_link
			@bbc_site.bbc_register_page.register_account
			@bbc_site.bbc_register_page_u13.click_under_age
			@bbc_site.bbc_register_page_u13.register_parent_email('try123@mail.com')
			@bbc_site.bbc_register_page_u13.click_send_email
			expect(@bbc_site.bbc_register_page_u13.confirmation_email_text).to eq 'Email sent. Now check your inbox and follow the instructions'
		end 
	end
end 