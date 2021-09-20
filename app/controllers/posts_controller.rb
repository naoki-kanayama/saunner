class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page])
    @likeposts = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
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
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
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

  def prefecture
    @post = Post.find_by(prefecture_id: params[:id])
    @posts = Post.where(prefecture_id: params[:id]).order('created_at DESC')
  end

  def search
    if params[:keyword].present?
      @posts = Post.where('(title LIKE ?) OR (text LIKE ?)', "%#{params[:keyword]}%", "%#{params[:keyword]}%")
      @keyword = params[:keyword]
    else
      @posts = Post.all
    end
  end


  private
  def post_params
    params.require(:post).permit(:title, :text, :prefecture_id, images: []).merge(user_id: current_user.id)
  end
end
