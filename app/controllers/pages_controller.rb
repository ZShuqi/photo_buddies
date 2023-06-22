class PagesController < ApplicationController
  def home
    @events = Event.all
    if user_signed_in?
      @com_users = User.where(community_id: current_user.community_id)
      @com_galleries = Gallery.where(user_id: @com_users)
      @com_photos = Photo.where(gallery_id: @com_galleries)
      @sorted_photos = @com_photos.sort_by { |ph| ph.likes.length }
      @exerpt = @sorted_photos.reverse.first(12)
    else
      @exerpt = Photo.all.first(12)
    end
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
    @bookings = Booking.where(user_id: current_user)
    @booked_events = []
    @bookings.each do |book|
      @booked_events << book.event
    end
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
  end


  def community
    if user_signed_in?
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
    else
      redirect_to "/404"
    end
  end
end






# <%# <div class = 'row cen mt-5'>
# <h5 class = ' mb-5'><strong><%= @user.username%>'s gallery</strong></h5>
# <% @my_galleries.each do |g| %>
# <h5 class='below'><%= g.name %></h5>
# <%= link_to gallery_photo_path(g, g) do %>
# <div class="carousel slide m-3 d-flex justify-content-center caro-drop">
#   <%= render 'shared/gallery_carousel', my_pics: g %>
# </div>
# <% end %>
# <% end %>
# </div>
# </div>
# <div class="container cen p-3 mb-3">
# <h5><strong><%= @user.username%>'s Events</strong></h5>
# <div class="grid">
# <% @my_events.reverse.each do |event| %>
#   <%= link_to event_path(event), class: "nav-link" do %>
#     <div class="card">
#       <img src="https://source.unsplash.com/random/?event" alt="random pic">
#       <div class="card-body">
#         <h5 class="card-title"><%= event.title %></h5>
#         <div class="d-flex flex-column">
#           <p><i class="fa-regular fa-clock"></i> <%= event.date.to_time.strftime('%e %b %Y %H:%M') %></p>
#           <p><i class="fa-solid fa-location-dot"></i> <%= event.address %></p>
#           <p><i class="fa-regular fa-file-lines"></i> <%= event.description %></p>
#           <p>By: <% @user = User.find(event.user_id) %>
#             <%= @user.username.capitalize %>
#             <%= cl_image_tag @user.photo.key, height: 40, width: 40, radius: 20, crop: :fill %>
#           </p>
#           <p>With:
#             <% event.bookings.each do |book| %>
#               <% participant = User.find(book.user_id) %>
#               <%= participant.username.capitalize %>
#               <%= cl_image_tag participant.photo.key, height: 40, width: 40, radius: 20, crop: :fill %>
#               <%# cloudinary note: need to convert to png to have a transparent background %>
#             <% end %>
#           </p>
#           <%# <% if event.user_id == current_user.id %>
#             <%# <p><i class="fa-solid fa-face-smile-wink"></i> My event</p> %>
#           <%# <% else %>
#             <%# <p>Book now <i class="fa-solid fa-chevron-right"></i></p> %>
#           <%# <% end %>
#         </div>
#       </div>
#     </div>
#   <% end %>
# <% end %>
# </div>
# </div>
# </div>
# </div>
