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
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post)
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
