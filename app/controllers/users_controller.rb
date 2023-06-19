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

  def user_params
    params.require(:user).permit(:email, :password, :description, :username, :photo, :banner_photo)
  end
end
