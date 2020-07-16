class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
  end


  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, question_id: params[:question_id])
  end

end
