class UsersController < ApplicationController
  before_action :find_user

  def show
  end

  def update
    @user.update_attributes!(user_params)
    redirect_to user_path(@user)
  end

  private

  def find_user
    @user = User.where(id: params[:id]).first if params[:id]
  end

  def user_params
    params.require(:user).permit(:name, :account, :email, :password, :password_confirmation)
  end
end
