require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  NEXT_BUTTON = 'Continue'
  THIRTEEN_OROVER_TEXT = '13 or over'
  EMAIL_FIELD = 'Email'
  PASSWORD_FIELD = 'Password'
  PASSWORD_ERROR_MESSAGE = 'p.form-message__text'

  def visit_register_page
    visit('https://www.bbc.co.uk/register')
  end

  def click_older_than_13
    click_link(THIRTEEN_OROVER_TEXT)
  end

  def enter_DOB(day, month, year)
    fill_in('Day', with: day)
    fill_in('Month', with: month)
    fill_in('Year', with: year)
  end

  def click_next_button
    click_button(NEXT_BUTTON)
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD, with: password)
  end

  def password_field
    find_field(PASSWORD_FIELD)
  end

  def check_error_message
    find(:css, PASSWORD_ERROR_MESSAGE).text
  end

end
