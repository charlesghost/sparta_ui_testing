require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in_page'

class BbcSite

	def bbc_homepage
        BbcHomepage.new
	end 

	def bbc_sign_in_page 
        BbcSignInPage.new
	end

end