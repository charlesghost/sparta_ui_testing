Given("I am on the BBC home page") do
  bbc_homepage.visit_home_page
end

And("I move to the sign in page") do
  bbc_homepage.sign_in_link
end

When("I proceed to register") do
  bbc_register_page.visit_register_page
end

And("I click I'm older than 13") do 
  bbc_register_page.click_older_than_13
end

And("I input my DOB") do
  bbc_register_page.enter_DOB('13','10','1992')
  bbc_register_page.click_next_button
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_register_page.fill_in_email('charlestesting1234@mail.com')
  bbc_register_page.fill_in_password(password)
  bbc_register_page.password_field.send_keys 
end

Then(/^I receive the corresponding error (.*)$/) do |error_message|
	expect(bbc_register_page.check_error_message).to eq error_message
end
