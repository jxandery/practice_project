require 'rails_helper'

RSpec.describe 'user can login' do
  it 'can access the log in page from register page' do
    visit '/'

    click_on "Login"
    expect(page).to have_content("Please login below")
  end

  it 'can login' do
    visit '/login'
    fill_in "user[username]", with: "Curious"
    fill_in "user[password]", with: "password"

    click_on "Login"
    expect(page).to have_content("Welcome Curious")
  end
end
