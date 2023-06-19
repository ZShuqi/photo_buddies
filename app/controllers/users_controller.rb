class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
  end



  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    if @user.update(user_params)
      redirect_to profile_path, notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :description, :username, :photo)
  end
end
