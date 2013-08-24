class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    post.comments.create(comment_params)
    redirect_to post
  end

private

def comment_params
  params.require(:comment).permit(:name, :email, :content)
end


end
