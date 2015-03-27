require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit('/posts/new') 
    fill_in 'Title', :with => 'Test Post'
    fill_in 'Text', :with => 'This is a test post.'
    click_on 'Add post'
    expect(page).to have_content "Post added!"
  end
end

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

describe "the delete post process" do
  it 'deletes an existing post' do
    post = Post.create(:title => "MY OPIONIONS", :text => "SO MANY!")
    visit root_path
    click_on 'MY OPIONIONS'
    click_on 'Delete Post'
    expect(page).to have_content "Post deleted"
  end
end



