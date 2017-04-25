class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new


  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to post_path
    else
      redirect_to new_comment_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
