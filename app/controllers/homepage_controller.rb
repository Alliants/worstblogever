class HomepageController < ApplicationController
  def index
    @post = Post.first || Post.new
  end
end
