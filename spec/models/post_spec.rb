require 'rails_helper'

RSpec.describe Post do

  it "fills in posted_on time" do
    post = Post.create! title: 'Foo', body: 'Bar'
    expect(post.posted_on).to be_present
  end

  it "allows setting a custom body formatter to override the default body formatter" do
    p = Post.new
    p.body = "post_body"
    expect(p.formatted_body).to eq "post_body"

    p.set_body_formatter { |body| "formatted:#{body}"  }
    expect(p.formatted_body).to eq "formatted:post_body"
  end

end
