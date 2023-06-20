class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
    authorize @photo
    @gallery = Gallery.find(params[:gallery_id])
    @likes = @photo.likes
    if user_signed_in?
      @like_status = Like.where(user_id: current_user.id, photo_id: @photo.id).any?
    else
      @like_status = true
    end
    @like = Like.new
  end

  def destroy
    @gallery = Gallery.find(params[:gallery_id])
    @photo = Photo.find(params[:id])
    authorize @photo
    @photo.destroy
    redirect_to profile_path
  end
end
