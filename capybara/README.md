## Capybara BBC Login - Automated Testing

For this task we were required to test the **BBC Login and Registration** functionality using Capybara.  

The tests run were to test that all data input was correct as well as testing to see if error messages were displayed when inputting incorrect login details.

## To Run The Tests

- Clone the repo using `git clone https://github.com/cjoshua15/sparta_ui_testing.git`
- Open the file space using your preferred IDE (i.e. Sublime Text)
- Run `gem install capybara`
- Run `gem install selenium`
- To perform the tests type `rspec` in terminal
## Tests Run

- Registration Journey (Under 13/Over 13) 

**Given:** When the user is on the BBC sign in page
**When:** The user clicks on the Register now link
**Then:** The user will be able to register

- Sign In Journey 

**Given:** When the user is on the BBC page
**When:** The user clicks on the sign in button
**Then:** The user will be able to login through the bbc sign in page

- Sign In Errors

**Given:** When the user is on the BBC sign in
**When:** The user inputs wrong information
**Then:** A error message will be displayed. 

