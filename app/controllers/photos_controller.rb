class PhotosController < ApplicationController

  def show
    @photo = Photo.find(params[:id])
    authorize @photo
    @gallery = Gallery.find(params[:gallery_id])
  end
end
