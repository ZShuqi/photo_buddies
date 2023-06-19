class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user
    @my_galleries = Gallery.where(user_id: @user)
    @events = Event.all
    @my_events = Event.where(user_id: @user)
    @gallery = Gallery.new
    render "pages/profile"
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
    params.require(:user).permit(:email, :password, :description, :username, :photo, :banner_photo)
  end
end
