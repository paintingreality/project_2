class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
    # @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to user_path(@post.user)
    end
  end

  private
  def post_params
    params.require(:post).permit(:make, :model, :picture, :year)
  end
end
