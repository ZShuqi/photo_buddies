class GalleriesController < ApplicationController
  def show
  @user = User.find(params[:id])
  @gallery = Gallery.find(params[:id])
  authorize @gallery
  authorize @user
  end
end
