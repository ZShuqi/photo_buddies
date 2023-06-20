class GalleriesController < ApplicationController
  def show
    @user = User.find(params[:user_id])
    @gallery = Gallery.find(params[:id])
    @gallery_photos = Photo.where(gallery_id: @gallery.id)
    authorize @gallery
    authorize @user
    @photo = Photo.new
  end

  def new
    @gallery = Gallery.new
    authorize @gallery
  end

  def create
    @gallery = Gallery.new(gallery_params)
    @gallery.user = current_user
    authorize @gallery
    if @gallery.save
      redirect_to user_gallery_path(current_user, @gallery), notice: "Gallery created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @gallery = Gallery.find(params[:id])
    authorize @gallery
  end

  def update
    @gallery = Gallery.find(params[:id])
    authorize @gallery
    if @gallery.update(gallery_params)
      redirect_to profile_path, notice: "Gallery updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @gallery = Gallery.find(params[:id])
    authorize @gallery

    if @gallery.destroy
      redirect_to profile_path, notice: "Gallery deleted successfully."
    else
      redirect_to profile_path, alert: "Failed to delete gallery."
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name)
  end
end
