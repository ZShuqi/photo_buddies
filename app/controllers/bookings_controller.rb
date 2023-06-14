class BookingsController < ApplicationController
  def index
    set_event
    @bookings = Booking.where(event_id: @event)
  end

  def create
    set_event
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user
    @booking.status = 'pending'
    # @duration = @booking.end_date - @booking.start_date
    if @booking.save
      redirect_to event_bookings_path(@event)
    else
      redirect_to event_path(@event), status: :unprocessable_entity
    end
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :details)
  end
end
