require "rails_helper"

describe "the sign up a new user process" do
  it "adds signs up a new user" do
    user = FactoryGirl.build(:user)
    visit new_user_registration_path
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    click_on "Sign up"
    expect(page).to have_content 'Welcome'
  end
end