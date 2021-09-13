class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.order("created_at DESC").limit(5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    if post.save
      redirect_to root_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    if post.destroy
      redirect_to root_path
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :image, :text, :prefecture_id).merge(user_id: current_user.id)
  end
end
