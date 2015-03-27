require 'rails_helper'

describe "the add a coment process" do
  it "adds a new comment" do
    visit('/posts') 
    click_link(post_path(post), match: :first)
    click_on 'Add a comment'
    fill_in 'Text', :with => 'This is a test post.'
    expect(page).to have_content "Comment Added"
  end
end
