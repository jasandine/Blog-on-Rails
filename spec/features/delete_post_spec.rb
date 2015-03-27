require 'rails_helper'

describe "the delete post process" do
  it 'deletes an existing post' do
    post = Post.create(:title => "MY OPIONIONS", :text => "SO MANY!")
    visit root_path
    click_on 'MY OPIONIONS'
    click_on 'Delete Post'
    expect(page).to have_content "Post deleted"
  end
end