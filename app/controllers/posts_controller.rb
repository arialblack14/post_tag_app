class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :destroy]

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save(post_params)
      flash[:success] = "Successfully created post!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      flash[:success] = "Successfully updated post!"
      redirect_to post_path(@post)
    else
      flash[:error] = "Error updating post!"
      render :edit
    end
  end

  def show
  end

  def destroy
    if @post.destroy
      flash[:success] = "Successfully deleted post!"
      redirect_to posts_path
    else
      flash[:error] = "Error deleting post!"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :tag_list)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
