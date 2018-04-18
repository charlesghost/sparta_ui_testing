require 'spec_helper'
require 'faker'

describe 'generate data for the form' do 

	before(:all) do 
		@generate = RandomFormData.new
	end 

	context 'generating the right type of the data' do 

		it 'should return first name as a string' do 
            expect(@generate.generate_first_name).to be_kind_of String
		end

		it 'should return last name as a string' do
            expect(@generate.generate_last_name).to be_kind_of String
		end

		it 'should return user name as a string' do
			expect(@generate.generate_user_name).to be_kind_of String
		end

		it 'should return a random phone number which is a string of 11 characters' do
            expect(@generate.generate_phone_number).to be_kind_of String 
            expect(@generate.generate_phone_number.length).to eq 11 
		end 

		it 'should return a email string' do 
            expect(@generate.generate_email).to be_kind_of String
		end

		it 'should return a password string' do
            expect(@generate.generate_password).to be_kind_of String
		end
	end 
end 