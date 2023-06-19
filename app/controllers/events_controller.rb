class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
  end

  def show
    set_event
    @booking = Booking.new
    authorize @event
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :address, :description, :date, images: [])
  end
end
