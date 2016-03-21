require "rails_helper"

RSpec.feature "public pool", :type => :feature, js: true do
  scenario "User creates a public pool" do

    user1 = User.create(email: "aaron@aaron.com", password: "password")
    user2 = User.create(email: "chien@chien.com", password: "password")

    # Aaron create a public pool
    SessionHelper.login_as("aaron@aaron.com")
    click_button "Create Pool"
    fill_in "Name", :with => "Aaron's Public Pool"
    click_button "Create"
    SessionHelper.logout

    # Another user chien should see the created public pool
    SessionHelper.login_as("chien@chien.com")
    expect(page).to have_text("Aaron's Public Pool")
  end
end
