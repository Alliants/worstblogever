class HomepageController < ApplicationController
  def index
    @post = Post.first || Post.new
    @hostname = %x("hostname").strip
  end
end
