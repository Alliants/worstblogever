class HomepageController < ApplicationController
  def index
    @post = Post.first || Post.new
    @post.set_body_formatter { |p| p.gsub(/\r?\n/, "<br>") }
  end
end
