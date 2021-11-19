require 'rails_helper'

def newUser 
user = FactoryBot.create(:user)
login_as(user)
end
RSpec.feature "HomePages", type: :feature do
  pending "add some scenarios (or delete) #{__FILE__}"
end
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    newUser
    visit root_path
    expect(page).to have_text("Projects")
  end
end