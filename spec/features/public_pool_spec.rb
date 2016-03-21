require "rails_helper"

RSpec.feature "public pool", :type => :feature, js: true do
  scenario "User creates a public pool" do

    user1 = User.create(email: "aaron@aaron.com", password: "password")
    user2 = User.create(email: "chien@chien.com", password: "password")

    login_as("aaron@aaron.com")

    click_button "Create Pool"

    fill_in "Name", :with => "My Public Pool"

    click_button "Create"

    expect(page).to have_text("My Public Pool")
  end

  def login_as(email, password="password")
    visit "/users/sign_in"
    fill_in "Email", with: email
    fill_in "Password", with: password
    click_button "Log in"
  end
end
