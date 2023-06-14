class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:email, :password, :description, :username, :photo)
  end
end
