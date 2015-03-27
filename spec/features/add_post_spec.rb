require "rails_helper"

describe "the add a post process" do
  let(:test_user) { FactoryGirl.create(:test_user) }

  before do
    sign_in(user)
  end

  it "adds a new post" do
    user = FactoryGirl.create(:user)
    visit new_post_path
    fill_in "Title", with: 'test title'
    fill_in "Text", with: 'bs'
    click_on "Add post"
    expect(page).to have_content 'Post added'
  end
end




