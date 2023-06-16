class GalleriesController < ApplicationController
  def show
  @user = User.find(params[:id])
  @gallery = Gallery.find(params[:id])
  authorize @gallery
  authorize @user
  end

  def new
    @user = current_user
    @gallery = Gallery.new
    authorize @gallery
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.user = current_user
    authorize @gallery

    if @gallery.save!
      redirect_to profile_path, notice: "Gallery created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :photos)
  end
end
