require 'faker'
require 'selenium-webdriver'

class RandomFormData

	include Faker

	def generate_first_name
        Name.first_name
	end

	def generate_last_name 
        Name.last_name
	end

	def generate_user_name
        Internet.user_name
	end

	def generate_phone_number
        num = Number.number(10)
        '0' + num
	end

	def generate_email 
        Internet.email
	end

	def generate_password
        Internet.password
	end

end 

