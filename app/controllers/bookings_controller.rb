class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    # @bookings = Booking.where(event_id: @event)
  end

  def create
    set_event
    # @booking = Booking.new(booking_params)
    authorize @event
    @booking = Booking.new()
    @booking.event = @event
    @booking.user = current_user

    respond_to do |format|
      if @booking.save
        format.html { redirect_to event_path(@event) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "events/show", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
    # @booking.save
    # if @booking.save
    #   redirect_to event_bookings_path(@event)
    # else
    #   redirect_to event_path(@event), status: :unprocessable_entity
    # end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  # def booking_params
    # params.require(:booking).permit(:user_id, :event_id)
  # end
end
