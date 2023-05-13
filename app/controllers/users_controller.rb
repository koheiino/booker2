class UsersController < ApplicationController
  before_action :require_authorization, only: [:edit]
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id: @user.id)
  end
  
  def index
    @user = current_user
    @users = User.all
    @book = Book.new
    @books = Book.all
  end
  
  def edit
    @user = User.find(params[:id])
    if @user == current_user
        render "edit"
    else
      redirect_to user_path(current_user)
    end
  end




  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice]="You have updated user successfully."
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  
  
  def require_authorization
  unless current_user == User.find(params[:id])
    redirect_to user_path(current_user), alert: "他のユーザーの編集はできません。"
  end
  end
end
