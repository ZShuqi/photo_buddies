class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
    authorize @photo
    @gallery = Gallery.find(params[:gallery_id])
    @likes = @photo.likes
    @like_status = Like.where(user_id: current_user.id, photo_id: @photo.id).any?
    @like = Like.new
  end

  # def update
  #   @photo = Photo.find(params[:id])
  #   @gallery = Gallery.find(params[:gallery_id])
  #   authorize @photo
  #   @photo.update(photo_params)
  #   redirect_to gallery_photo_path(@gallery, @photo)
  # end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @photo = Photo.find(params[:id])
    authorize @photo
    @photo.destroy
    redirect_to profile_path
  end

  # private

  # def photo_params
  #   params.require(:photo).permit(:likes)
  # end
end
