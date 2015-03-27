require 'rails_helper'

describe "the add comment process" do
  it 'adds a comment' do
    post = Post.create(:title => "MY OPIONIONS", :text => "SO MANY!")
    visit root_path
    click_on 'MY OPIONIONS'
    click_on 'Add a comment'
    fill_in 'Text', :with => 'SO MANY!'
    click_on 'Add comment'
    expect(page).to have_content "Comment Added"
  end
end
