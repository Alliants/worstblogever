class PostsController < ApplicationController
  def create
    Post.create! post_params.merge(posted_on: Time.now)
    redirect_to root_path, notice: "Success"
  end

  def update
    post = Post.find(params[:id])
    post.update_attributes! post_params.merge(posted_on: Time.now)
    redirect_to root_path, notice: "Success"
  end

  private def post_params
    params.require(:post).permit(:title, :body)
  end
end
