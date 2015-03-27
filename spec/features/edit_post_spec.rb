require 'rails_helper'

describe "the edit post process" do
  it 'edits an existing post' do
    post = Post.create(:title => "MY OPIONIONS", :text => "SO MANY!")
    visit root_path
    click_on 'MY OPIONIONS'
    click_on 'Edit Post'
    fill_in 'Title', :with => 'MY OPIONIONS'
    fill_in 'Text', :with => 'SO MANY!'
    click_on 'Edit Post'
    expect(page).to have_content "Post updated"
  end
end