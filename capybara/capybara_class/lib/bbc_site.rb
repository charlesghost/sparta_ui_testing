require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'
require_relative 'pages/bbc_register_page'
require_relative 'pages/bbc_register_page_u13'

class BbcSite

	def bbc_homepage
        BbcHomepage.new
	end 

	def bbc_sign_in_page 
        BbcSignInPage.new
	end

	def bbc_register_page
		BbcRegisterPage.new
	end

	def bbc_register_page_u13
        BbcRegisterUnder13.new
	end
end