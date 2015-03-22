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


