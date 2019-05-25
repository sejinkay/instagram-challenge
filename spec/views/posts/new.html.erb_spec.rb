require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :message => "MyString",
      :img_url => "MyString",
      :users => nil
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[message]"

      assert_select "input[name=?]", "post[img_url]"

      assert_select "input[name=?]", "post[users_id]"
    end
  end
end
