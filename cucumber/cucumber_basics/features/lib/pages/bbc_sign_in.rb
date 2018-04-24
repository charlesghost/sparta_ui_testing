require 'capybara/dsl'

class BbcSignIn
  include Capybara::DSL

  attr_reader :incorrect_username_text, :password_too_short

  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON = 'submit-button'
  ERROR_MESSAGE_FOR_EMAIL_NOT_FOUND = 'form-message-username'
  GENERAL_ERROR_MESSAGE = 'form-message-general'
  PASSWORD_ERROR_MESSAGE = 'form-message-password'

  def initialize
    @incorrect_username_text = "Sorry, that doesn't look right. Please check it\'s a proper email."
    @password_too_short = "Sorry, that password is too short. It needs to be eight characters or more."
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def click_sign_in_button
    click_button(SUBMIT_BUTTON)
  end

  def incorrect_password_text
    find(:id, ERROR_MESSAGE_FOR_EMAIL_NOT_FOUND).text
  end

  def check_error_message
    find(:id, ERROR_MESSAGE_FOR_EMAIL_NOT_FOUND).text
  end

  def check_general_message
    find(:id, GENERAL_ERROR_MESSAGE).text
  end

  def check_password_message
    find(:id, PASSWORD_ERROR_MESSAGE).text
  end

end
