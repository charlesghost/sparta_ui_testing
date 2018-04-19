require 'spec_helper'

describe 'Incorrect user details produces valid error' do 

	context 'It should respond with the correct error when incorrect details are input' do 
		it 'should produce an error when inputting an incorrect password to a invalid account' do 
			@bbc_site = BbcSite.new
			@bbc_site.bbc_homepage.visit_home_page
			@bbc_site.bbc_homepage.click_sign_in_link
			@bbc_site.bbc_sign_in_page.fill_in_username('dghsdhgsdghsdhg')
			@bbc_site.bbc_sign_in_page.fill_in_password('ahjsdjhsdj55')
			@bbc_site.bbc_sign_in_page.click_sign_in_button
			expect(@bbc_site.bbc_sign_in_page.incorrect_password_text).to eq 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or get help here.'
		end 

	end

	context 'It should respond with the correct error when no details are entered' do
		it 'should produce three errors when no username or password is entered' do 
            @bbc_site = BbcSite.new
			@bbc_site.bbc_homepage.visit_home_page
			@bbc_site.bbc_homepage.click_sign_in_link
			@bbc_site.bbc_sign_in_page.click_sign_in_button
			expect(@bbc_site.bbc_sign_in_page.missing_details_text).to eq 'Sorry, those details don\'t match. Check you\'ve typed them correctly.'
			expect(@bbc_site.bbc_sign_in_page.missing_username_text).to eq 'Something\'s missing. Please check and try again.'
			expect(@bbc_site.bbc_sign_in_page.missing_password_text).to eq 'Something\'s missing. Please check and try again.'
		end 
	end 

	context 'it should respond with the correct error when details are too short' do 

		it 'should produce two errors when username and password are too short' do 
			@bbc_site = BbcSite.new
			@bbc_site.bbc_homepage.visit_home_page
			@bbc_site.bbc_homepage.click_sign_in_link
			@bbc_site.bbc_sign_in_page.fill_in_username('1')
			@bbc_site.bbc_sign_in_page.fill_in_password('ahjs')
			@bbc_site.bbc_sign_in_page.click_sign_in_button
			expect(@bbc_site.bbc_sign_in_page.short_username_text).to eq 'Sorry, that username\'s too short. It needs to be at least two characters.'
			expect(@bbc_site.bbc_sign_in_page.short_password_text).to eq 'Sorry, that password is too short. It needs to be eight characters or more.'
		end


	end
end 