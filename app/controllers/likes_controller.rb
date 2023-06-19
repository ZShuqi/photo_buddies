class LikesController < ApplicationController
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @photo = Photo.find(params[:photo_id])
    @like = Like.new(user_id: current_user.id, photo_id: @photo.id)
    authorize @like
    @like.save
    redirect_to gallery_photo_path(@gallery, @photo)
  end
end
