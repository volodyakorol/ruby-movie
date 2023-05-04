class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:success] = 'Comment created'
    else
      flash[:danger] = @comment.errors.full_messages
    end

    redirect_to movie_path(@comment.movie)
  end

  private

  def comment_params
    p = params.require(:comment).permit(:body, :movie_id)
    p[:user_id] = current_user.id

    p
  end
end
