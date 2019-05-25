require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :message => "MyString",
      :img_url => "MyString",
      :users => nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[message]"

      assert_select "input[name=?]", "post[img_url]"

      assert_select "input[name=?]", "post[users_id]"
    end
  end
end
