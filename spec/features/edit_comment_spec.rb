require 'rails_helper'

describe "the add comment process" do
  it 'adds a comment' do
    post = Post.create(:title => "MY OPIONIONS", :text => "SO MANY!")
    visit root_path
    click_on 'MY OPIONIONS'
    click_on 'Add a comment'
    fill_in 'Text', :with => 'SO MANY!'
    click_on 'Add comment'
    click_on 'Edit Comment'
    fill_in 'Text', :with => 'SO MANY EDITS!'
    click_on 'Update Comment'
    expect(page).to have_content "Comment updated"
  end
end
