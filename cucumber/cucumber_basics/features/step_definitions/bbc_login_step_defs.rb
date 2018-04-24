Given("I access the bbc login page") do
  puts "-----------------", @users 
  bbc_homepage.visit_home_page
  bbc_homepage.sign_in_link
end

And("I input any username details") do
  puts "-----------------", @users 
  bbc_sign_in.fill_in_username('charles')
end

And("I input a incorrect password as 1234abc") do 
  bbc_sign_in.fill_in_password('1234abc')
end

When("I try to login") do
  
end

Then("I receive an error stating it needs to be at least 8 chars") do
  
end

And("I input incorrect username details") do
  
end

And("I input incorrect password details") do
  
end

Then("I receive an error for not finding the account") do
  
end