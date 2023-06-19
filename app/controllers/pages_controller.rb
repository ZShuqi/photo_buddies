class PagesController < ApplicationController
  def home
    @events = Event.all
    @photos = Photo.all
    @hot_spots = HotSpot.all
    @markers = @hot_spots.geocoded.map do |hot_spot|
      {
        lat: hot_spot.latitude,
        lng: hot_spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {hot_spot: hot_spot}),
        marker_html: render_to_string(partial: "marker")
      }
    end
    @hot_spot = HotSpot.new
    authorize @hot_spot
  end

  def show
    @user = User.find(params[:id])
    @galleries = Gallery.all
    @my_galleries = Gallery.where(user_id: params[:id])
    @events = Event.all
    @my_events = Event.where(user_id: params[:id])
  end

  def profile
    @user = current_user
    @my_galleries = Gallery.where(user_id: current_user.id)
    @events = Event.all
    @my_events = Event.where(user_id: current_user.id)
    @gallery = Gallery.new
  end

  def search
    @users = User.all
    if params[:query].present?
      @results = PgSearch.multisearch(params[:query])
      if params[:photos].present?
        @photo_results = @results.select do |result|
          result.searchable_type == "Photo"
        end
      end

      if params[:users].present?
        @user_results = @results.select do |result|
          result.searchable_type == "User"
        end
      end

      if params[:users].blank? && params[:photos].blank?
        @photo_results = @results.select do |result|
          result.searchable_type == "Photo"
        end
        @user_results = @results.select do |result|
          result.searchable_type == "User"
        end
      end

      if params[:query].present? && @results.blank?
        @message = "Sorry, no results found."
      end
    else
      @message = "Run a search!"
    end
  end

  def community
    @community = Community.find(current_user.community_id)
    @com_members = User.where(community_id: @community)
    @com_events = Event.where(user_id: @com_members)
  end
end
