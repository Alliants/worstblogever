require 'rails_helper'

RSpec.describe Post do

  it "works" do
    post = Post.create! title: 'Foo', body: 'Bar'
    expect(post.posted_on).to be_present
  end

end
