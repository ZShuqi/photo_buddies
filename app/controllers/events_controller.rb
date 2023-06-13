class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
  end

  def show
    set_event
    @event = Event.new
    # authorize @event
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
