class HotSpotsController < ApplicationController
  def create
    @hot_spot = HotSpot.new(hot_spot_params)
    @hot_spot.user = current_user
    authorize @hot_spot
    if @hot_spot.save
      redirect_to root_path
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  private

  def hot_spot_params
    params.require(:hot_spot).permit(:comment, :address, :photo)
  end
end
