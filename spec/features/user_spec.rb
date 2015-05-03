require 'rails_helper'

RSpec.describe 'user can either register or log in' do
  it 'user can register' do
    visit '/'
    fill_in "user[username]", with: "Rich"
    fill_in "user[email]", with: "rich@shea.com"
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"

    click_on "Create User"
    expect(page).to have_content("Register a new user")
  end

end
