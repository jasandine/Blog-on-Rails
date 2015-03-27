require "rails_helper"

describe "the add a comment process" do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end


  it 'adds a comment' do
    visit new_post_path
    fill_in "Title", with: 'test title'
    fill_in "Text", with: 'bs'
    click_on 'Add Post'
    fill_in 'Text', :with => 'SO MANY!'
    click_on 'Add a comment'
    fill_in "Text", with: 'more bs'
    click_on 'Add comment'
    expect(page).to have_content "Comment Added"
  end
end
