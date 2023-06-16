class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
    authorize @photo
    @gallery = Gallery.find(params[:gallery_id])
  end

  def destroy

    @gallery = Gallery.find(params[:gallery_id])
    @photo = Photo.find(params[:id])
    authorize @photo
    @photo.destroy
    redirect_to profile_path
  end
end
