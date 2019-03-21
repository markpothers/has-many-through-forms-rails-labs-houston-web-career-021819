class CommentsController < ApplicationController

  def create
    byebug
    comment = Comment.create(comment_params)
    redirect_to post_path(comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :username, user_attributes:[:username])
  end
end
