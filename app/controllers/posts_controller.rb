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
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to post_path(@post)
    else
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:id])

    if @post.destroy
      redirect_to new_post_path(@post.user)
    end
  end

  private
  def post_params
    params.require(:post).permit(:make, :model, :cars, :year)
  end
end
