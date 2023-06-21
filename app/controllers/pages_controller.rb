class PagesController < ApplicationController
  def home
    @events = Event.all
    @com_users = User.where(community_id: current_user.community_id)
    # @com_photos = Photo.where(gallery_id.user.id: @com_users_id)
    # @tr = @com_photos.first.likes.length
    # @com_photos.select do |com_ph|
    #   com_ph.likes.length > 10
    # end
    # @popular_com_photos = @com_photos.where(likes.length > 10)
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
      # raise
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
        @message = "Sorry, no results found. Have a look at our recommendations for you!"
        @photo_results = Photo.all
        @user_results = User.where(community_id: current_user.community_id)
      end
    else
      @message = "New in your community:"
      @photo_results = Photo.last(20)
      @user_results = User.where(community_id: current_user.community_id).last(4)
    end
    # params.delete(:query)
    # params.delete(:users)
    # params.delete(:photos)
  end

  def community
    @community = Community.find(current_user.community_id)
    @com_members = User.where(community_id: @community)
    @com_events = Event.where(user_id: @com_members)

    @com_hot_spots = HotSpot.where(user_id: @com_members)
    @markers = @com_hot_spots.geocoded.map do |hot_spot|
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
end
