require 'rails_helper'

def sign_in(user)
   user.confirm!
   visit new_user_session_path
   fill_in "Email",    with: user.email
   fill_in "Password", with: user.password
   click_button "Sign in"
end

def login_user
  Warden.test_mode!
  user = create(:user)
  login_as user, :scope => :user
  user.confirmed_at = Time.now
  user.confirm!
  user.save
  user
end