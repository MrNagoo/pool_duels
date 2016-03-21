module SessionHelper
  def self.logout
    Capybara.click_link "Sign Out"
  end

  def self.login_as(email, password="password")
    Capybara.visit "/users/sign_in"
    Capybara.fill_in "Email", with: email
    Capybara.fill_in "Password", with: password
    Capybara.click_button "Log in"
  end
end
