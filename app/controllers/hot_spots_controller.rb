class HotSpotsController < ApplicationController
  def create
    @hot_spot = HotSpot.new(hot_spot_params)
    @hot_spot.user = current_user
    authorize @hot_spot
    if @hot_spot.save
      redirect_to community_path(anchor: "hot-spot-map"), notice: "Hot-spot successfully created!"
    else
      redirect_to community_path(anchor: "new-hot-spot-form"), alert: "Error, try again :)"
    end
  end

  private

  def hot_spot_params
    params.require(:hot_spot).permit(:comment, :address, :photo)
  end
end
