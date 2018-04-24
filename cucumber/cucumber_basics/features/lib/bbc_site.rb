require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_sign_in'
require_relative 'pages/bbc_register'

module BbcSite

  def bbc_homepage
    BbcHomepage.new
  end

  def bbc_sign_in
    BbcSignIn.new
  end

  def bbc_register_page
    BbcRegisterPage.new
  end
end
