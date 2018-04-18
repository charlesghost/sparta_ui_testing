require 'selenium-webdriver'

class SeleniumDemoReg

  # page_url
  PAGE_URL = 'http://demoqa.com/registration/'
  # Page field
  FIRST_NAME_FIELD = 'name_3_firstname' # id
  LAST_NAME_FIELD = 'name_3_lastname' # id
  MARITAL_STATUS = 'radio_4[]' # id
  HOBBY_STATUS = 'checkbox_5[]' # values
  COUNTRY_DROP_DOWN_LIST = 'dropdown_7' # id
  DOB_MONTH_DROPDOWN_LIST = 'mm_date_8' # id
  DOB_DAY_DROPDOWN_LIST = 'dd_date_8' # id
  DOB_YEAR_DROPDOWN_LIST = 'yy_date_8' # id
  PHONE_NUMBER_FIELDS = 'phone_9' # id
  USERNAME_FIELD = 'username' # id
  EMAIL_FIELD = 'email_1' # id
  PROFILE_PICTURE_BUTTON = 'profile_pic_10' # id
  DESCRIPTION_FIELD = 'description' # id
  PASSWORD_FIELD = 'password_2' # id
  CONFIRM_PASSWORD_FIELD = 'confirm_password_password_2' # id
  SUBMIT_BUTTON = 'pie_submit' # name
  REGISTRATION_CONFIRMATION = 'piereg_message' #class

  def initialize
    # set up driver
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def access_registration_form
    @chrome_driver.get(PAGE_URL)
  end

  def current_url
    @chrome_driver.current_url
  end

  # first name field management

  def set_first_name_field(first_name)
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).send_keys(first_name)
  end

  def get_first_name_field_value
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD)['value']
  end

  def first_name_field_displayed
    @chrome_driver.find_element(:id, FIRST_NAME_FIELD).displayed?
  end

  # last name field management

  def set_last_name_field(last_name)
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).send_keys(last_name)
  end

  def get_last_name_field_value
    @chrome_driver.find_element(:id, LAST_NAME_FIELD)['value']
  end

  def last_name_field_displayed
    @chrome_driver.find_element(:id, LAST_NAME_FIELD).displayed?
  end

  # Marital option management

  def select_marital_option(marital_status)

    case marital_status
      when 'Single'
        @chrome_driver.find_elements(:name, MARITAL_STATUS)[0].click
        @chrome_driver.find_elements(:name, MARITAL_STATUS)[0].selected?
      when 'Married'
        @chrome_driver.find_elements(:name, MARITAL_STATUS)[1].click
        @chrome_driver.find_elements(:name, MARITAL_STATUS)[1].selected?
      when 'Divorced'
        @chrome_driver.find_elements(:name, MARITAL_STATUS)[2].click
        @chrome_driver.find_elements(:name, MARITAL_STATUS)[2].selected?
      else
        raise('Options are Single, Married and Divorced')
    end

  end

  # hobby option management

  def select_hobby_option(hobby)

    case hobby
      when 'Dance'
        @chrome_driver.find_elements(:name, HOBBY_STATUS)[0].click
        @chrome_driver.find_elements(:name, HOBBY_STATUS)[0].selected?
      when 'Reading'
        @chrome_driver.find_elements(:name, HOBBY_STATUS)[1].click
        @chrome_driver.find_elements(:name, HOBBY_STATUS)[1].selected?
      when 'Cricket'
        @chrome_driver.find_elements(:name, HOBBY_STATUS)[2].click
        @chrome_driver.find_elements(:name, HOBBY_STATUS)[2].selected?
      else
        raise('Options are Dance, Reading and Cricket')
    end

  end

  # Select Country

  def get_selected_country
    options = @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    options.find_element(:tag_name, 'option').text
  end

  def country_dropdown_list_select(country)
    dropdown_list = @chrome_driver.find_element(:id, COUNTRY_DROP_DOWN_LIST)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |country_option|
      if country_option.text == country
        country_option.click
      end
    end

  end

  # DOB management

  def dob_month_list_select(month_value)
    dropdown_list = @chrome_driver.find_element(:id, DOB_MONTH_DROPDOWN_LIST)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |month_option|
      if month_option.text == month_value
        month_option.click
      end
    end
  end

  def dob_day_list_select(day_value)
    dropdown_list = @chrome_driver.find_element(:id, DOB_DAY_DROPDOWN_LIST)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |day_option|
      if day_option.text == day_value
        day_option.click
      end
    end
  end

  def dob_year_list_select(year_value)
    dropdown_list = @chrome_driver.find_element(:id, DOB_YEAR_DROPDOWN_LIST)
    options = dropdown_list.find_elements(:tag_name, 'option')

    options.each do |year_option|
      if year_option.text == year_value
        year_option.click
      end
    end
  end

  # Phone number field management

  def set_phone_number_field(phone_number)
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS).send_keys(phone_number)
  end

  def get_phone_number_field_value
    @chrome_driver.find_element(:id, PHONE_NUMBER_FIELDS)['value']
  end

  #  username field management

  def set_user_name_field(user_name)
    @chrome_driver.find_element(:id, USERNAME_FIELD).send_keys(user_name)
  end

  def get_user_name_field_value
    @chrome_driver.find_element(:id, USERNAME_FIELD)['value']
  end

  # Email field management

  def set_email_field(email)
    @chrome_driver.find_element(:id, EMAIL_FIELD).send_keys(email)
  end

  def get_email_field_value
    @chrome_driver.find_element(:id, EMAIL_FIELD)['value']
  end

  # about yourself / description field

  def set_about_yourself_field(details)
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD).send_keys(details)
  end

  def get_about_yourself_value
    @chrome_driver.find_element(:id, DESCRIPTION_FIELD)['value']
  end

  # Password management

  def set_password_field(password)
    @chrome_driver.find_element(:id, PASSWORD_FIELD).send_keys(password)
  end

  def get_password_value
    @chrome_driver.find_element(:id, PASSWORD_FIELD)['value']
  end

  def set_confirmation_password_field(password)
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD).send_keys(password)
  end

  def get_confirmation_password_value
    @chrome_driver.find_element(:id, CONFIRM_PASSWORD_FIELD)['value']
  end

  # registration confirmation

  def click_submit
    @chrome_driver.find_element(:css, "input[name=#{SUBMIT_BUTTON}").click
  end

  def check_registration_successful
    @chrome_driver.find_element(:class, REGISTRATION_CONFIRMATION).text
  end
end
