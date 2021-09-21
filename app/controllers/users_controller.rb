class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  def show
    @nickname = @user.nickname
    @posts = @user.posts.all.order('created_at DESC')
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    if user.save
      redirect_to user_path(user.id)
    end
  end

  private

  def user_params
    params.require(:user).permit(:image, :nickname, :introduction)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
