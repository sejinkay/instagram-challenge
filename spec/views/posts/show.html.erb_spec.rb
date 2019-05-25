require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :message => "Message",
      :img_url => "Img Url",
      :users => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Message/)
    expect(rendered).to match(/Img Url/)
    expect(rendered).to match(//)
  end
end
